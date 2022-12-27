package com.thes2ksolution.pay.s2kpay.exception;


public class HttpResponse {

    private int status;

    private String message;

    public HttpResponse() {
    }

    public HttpResponse(int status, String message) {
        this.status = status;
        this.message = message;
    }


    public int getStatus() {
        return status;
    }

    public void getStatus(int getStatus) {
        this.status = getStatus;
    }


    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
