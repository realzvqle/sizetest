
extern "system" {
    fn MessageBoxW(hWnd: *const std::ffi::c_void, lpText: *const u16, lpCaption: *const u16, uType: u32) -> i32;
}

macro_rules! w {
    ($s:expr) => {
        concat!($s, "\0").encode_utf16().collect::<Vec<_>>().as_ptr()
    };
}

fn main() {
    unsafe {
        MessageBoxW(std::ptr::null(), w!("Wide"), w!("Caption"), 0x00000000);
    }
}
