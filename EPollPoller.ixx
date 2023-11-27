export module EPollPoller;
import Poller;
import Timestamp;
import Channel;

import <vector>;
import <sys/epoll.h>;
// class Channel;
export class EPollPoller : public Poller
{
public:
    EPollPoller(EventLoop *loop);
    ~EPollPoller() override;

    Timestamp poll(int timeoutMs, ChannelList *activeChannels) override;
    // override
    void updateChannel(Channel *channel) override;
    void removeChannel(Channel *channel) override;

private:
    static const int kInitEventListSize = 16;

    void fillActiveChannels(int nemEvents, ChannelList *activeChannels) const;
    void update(int operation, Channel *channel);
    using EventList = std::vector<epoll_event>;
    int epollfd_;
    EventList events_;
};
