import Poller;
import EPollPoller;

import <cstdlib>;

// class EventLoop;
Poller *Poller::newDefaultPoller(EventLoop *loop)
{
    if (std::getenv("MUDUO_USE_POLL"))
    {
        return nullptr;
    }
    else
    {
        return nullptr;
    }
}