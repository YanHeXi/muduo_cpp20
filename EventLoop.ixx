export module EventLoop;
import nocopyable;
import Timestamp;
// import Poller;
import CurrentThread;

import <functional>;
import <vector>;
import <atomic>;
import <memory>;
import <mutex>;

export class Channel;
export class Poller;
export class EventLoop : nocopyable
{
public:
    using Functor = std::function<void()>;
    EventLoop();
    ~EventLoop();

    void loop();

    void quit();
    Timestamp pollReturnTime() const { return pollReturnTime_; }

    void runInLoop(Functor cb);
    void queueInLoop(Functor cb);

    void wakeup();

    void updateChannel(Channel *channel);
    void removeChannel(Channel *channel);
    bool hasChannel(Channel *channel);

    bool isInLoopThread() const { return threadId_ == CurrentThread::tid(); }

private:
    void handleRead();
    void doPendingFunctors(); // run callback()

    using ChannelList = std::vector<Channel *>;

    std::atomic_bool looping_;
    std::atomic_bool quit_;
    std::atomic_bool callingPendingFunctors_;

    const pid_t threadId_;

    Timestamp pollReturnTime_;
    std::unique_ptr<Poller> poller_;

    int wakeupFd_;
    std::unique_ptr<Channel> wakeupChannel_;

    ChannelList activeChannels_;
    Channel *currentActiveChannel_;

    std::atomic_bool callingPendingFunctors;
    std::vector<Functor> PendingFunctors_;
    std::mutex mutex_;
};
