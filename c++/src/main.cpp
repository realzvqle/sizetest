#include <Windows.h>


class idk{
    public:
    void idkk(){
        MessageBoxW(NULL, L"Wide", L"Caption", MB_OK);
    }
};


int main(){
    idk* ik = new idk;
    ik->idkk();
    return 0;
}