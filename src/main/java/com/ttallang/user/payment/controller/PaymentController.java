package com.ttallang.user.payment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pay")
public class PaymentController {

    @GetMapping("/payment")
    public String payment() {
        return "payment/userPayment";
    }
}
