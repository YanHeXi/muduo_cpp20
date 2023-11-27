import Poller;
import Channel;

Poller::Poller(EventLoop *loop)
    : ownerLoop_(loop)
{
}

bool Poller::hasChannel(Channel *channel) const
{
    auto it = channels_.find(channel->fd());
    return it != channels_.end() && it->second == channel;
}

void Poller::updateChannel(Channel *channel) {}
void Poller::removeChannel(Channel *channel) {}