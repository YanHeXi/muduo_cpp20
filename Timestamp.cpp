import Timestamp;

import <ctime>;
import <string>;

Timestamp::Timestamp() : microSecondsSinceEpoch_(0) {}

Timestamp::Timestamp(int64_t microSecondsSinceEpoch)
    : microSecondsSinceEpoch_(microSecondsSinceEpoch) {}
Timestamp Timestamp::now()
{
    return Timestamp(time(nullptr));
}

std::string Timestamp::toString() const
{
    char buf[128] = {0};
    time_t timeValue = static_cast<time_t>(microSecondsSinceEpoch_ / 1000000);
    std::tm result;

    if (localtime_r(&timeValue, &result) != nullptr)
    {
        snprintf(buf,
                 128,
                 "%4d/%02d/%02d %02d:%02d:%02d",
                 result.tm_year + 1900,
                 result.tm_mon + 1,
                 result.tm_mday,
                 result.tm_hour,
                 result.tm_min,
                 result.tm_sec);
    }
    return buf;
}
