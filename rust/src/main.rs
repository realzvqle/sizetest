use std::alloc::System;

#[global_allocator]
static A: System = System;


use windows_sys::{
    core::*, Win32::UI::WindowsAndMessaging::*,
};

fn main() {
    unsafe {
        MessageBoxW(0, w!("Wide"), w!("Caption"), MB_OK);
    }
}