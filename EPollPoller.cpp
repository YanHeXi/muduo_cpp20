import EPollPoller;
import Logger;
import Channel;
import Poller;
import Timestamp;

import <cerrno>;
import <unistd.h>;
import <strings.h>;
import <cstring>;
import <sys/epoll.h>;

const int kNew = -1;
const int kAdded = 1;
const int kDeleted = 2;

EPollPoller::EPollPoller(EventLoop *loop)
    : Poller(loop),
      epollfd_(::epoll_create1(EPOLL_CLOEXEC)),
      events_(kInitEventListSize)
{
    if (epollfd_ < 0)

    {
        // Logger::instance().log(Logger::FATAL, "epoll_create error:" + std::to_string(errno) + "\n");
    }
}

EPollPoller::~EPollPoller()
{
    ::close(epollfd_);
}

Timestamp EPollPoller::poll(int timeoutMs, ChannelList *activeChannels)
{
    // Logger::instance().log(Logger::INFO,
    //                        "func => fd total count:" +
    //                            std::to_string(channels_.size()) +
    //                            "\n");

    int numEvents = ::epoll_wait(epollfd_,
                                 &*events_.begin(),
                                 static_cast<int>(events_.size()),
                                 timeoutMs);
    int saveErrno = errno;
    Timestamp now(Timestamp::now());
    if (numEvents > 0)
    {
        // Logger::instance().log(Logger::INFO,
        //                        std::to_string(numEvents) +
        //                            "events happened \n");

        fillActiveChannels(numEvents, activeChannels);
        if (numEvents == events_.size())
        {
            events_.resize(events_.size() * 2);
        }
    }
    else if (numEvents == 0)
    {
        // Logger::instance().log(Logger::DEBUG,
        //                        __FUNCTION__);
        // Logger::instance().log(Logger::DEBUG,
        //                        "time out! \n");
    }
    else
    {
        if (saveErrno != EINTR)
        {
            errno = saveErrno;
            // Logger::instance().log(Logger::ERROR,
            //                        "EPollPoller::poll() err !");
        }
    }
    return now;
}
void EPollPoller::updateChannel(Channel *channel)
{
    const int index = channel->index();
    // Logger::instance().log(Logger::INFO,
    //                        __FUNCTION__);
    // Logger::instance().log(Logger::INFO,
    //                        "fd = " +
    //                            std::to_string(channel->fd()) + "event = " +
    //                            std::to_string(channel->events()) + "index = " +
    //                            std::to_string(index) + "\n");

    if (index == kNew || index == kDeleted)
    {
        if (index == kNew)
        {
            int fd = channel->fd();
            // channels_[fd] = channel; // use it will ERROR I have no idea to find out how it happen
            channels_.emplace(fd, channel);
        }

        channel->set_index(kAdded);
        update(EPOLL_CTL_ADD, channel);
    }
    else
    {
        int fd = channel->fd();
        if (channel->isNoneEvent())
        {
            update(EPOLL_CTL_DEL, channel);
            channel->set_index(kDeleted);
        }
        else
        {
            update(EPOLL_CTL_MOD, channel);
        }
    }
}

void EPollPoller::removeChannel(Channel *channel)
{

    int fd = channel->fd();
    channels_.erase(fd);

    int index = channel->index();
    if (index == kAdded)
    {
        update(EPOLL_CTL_DEL, channel);
    }
    channel->set_index(kNew);
}

void EPollPoller::update(int operation, Channel *channel)
{
    epoll_event event;
    memset(&event, 0, sizeof(event));
    int fd = channel->fd();

    event.events = channel->events();
    event.data.ptr = channel;
    event.data.ptr = channel;

    if (::epoll_ctl(epollfd_, operation, fd, &event) < 0)
    {
        if (operation == EPOLL_CTL_DEL)
        {
            // Logger::instance().log(Logger::ERROR,
            //                        "epoll_ctl del error:" +
            //                            std::to_string(errno));
        }
        else
        {
            // Logger::instance().log(Logger::FATAL,
            //                        "epoll_ctl add/mod error :" +
            //                            std::to_string(errno));
        }
    }
}

void EPollPoller::fillActiveChannels(int numEvents, ChannelList *activeChannels) const
{
    for (const auto &event : std::ranges::subrange(events_.begin(), events_.begin() + numEvents))
    {
        Channel *channel = static_cast<Channel *>(event.data.ptr);
        channel->set_revents(event.events);
        activeChannels->push_back(channel);
    }
}