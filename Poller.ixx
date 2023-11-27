export module Poller;
// import EventLoop;
import nocopyable;
import Channel;
import Timestamp;

import <unordered_map>;
import <vector>;
import <cstdio>;

// export class Channel;
export class EventLoop;
export class Poller : public nocopyable
{
public:
    Poller(EventLoop *loop);
    virtual ~Poller() = default;
    using ChannelList = std::vector<Channel *>;

    virtual Timestamp poll(int timeoutMs, ChannelList *activeChannels) = 0;
    // virtual
    virtual void updateChannel(Channel *channel);
    virtual void removeChannel(Channel *channel);

    bool hasChannel(Channel *channel) const;

    static Poller *newDefaultPoller(EventLoop *loop);

protected:
    using ChannelMap = std::unordered_map<int, Channel *>;
    ChannelMap channels_;

private:
    EventLoop *ownerLoop_;
};
