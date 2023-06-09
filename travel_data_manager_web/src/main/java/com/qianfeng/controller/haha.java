package com.qianfeng.controller;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class haha {
    public static void main(String[] args) {
        // 非对称，每次加密的数据都不一样
        // MD5码则可以破解
//        $2a$10$qMluY2KspmBSqOL8L80g6.fBi1bgLL/aSirWIxXzZ6kO8BVIQuUSq
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        System.out.println(bCryptPasswordEncoder.encode("123456"));
        //$2a$10$sMDrIL9mpgYJYxTalbfcb.hewdywEgHNnaBaD6z70RqPVP6D8AJyS
    }
}
