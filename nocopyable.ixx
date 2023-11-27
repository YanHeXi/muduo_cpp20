export module nocopyable;

export class nocopyable{
    public:
    nocopyable(const nocopyable&) = delete;
    nocopyable& operator=(const nocopyable&)   = delete;

    protected:

    nocopyable() = default;
    ~nocopyable() = default;
};