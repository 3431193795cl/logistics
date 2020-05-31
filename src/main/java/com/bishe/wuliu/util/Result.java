package com.bishe.wuliu.util;

import java.io.Serializable;

public class Result implements Serializable{
	 // 是否成功
    private boolean success;
    // 返回信息
    private String messages;

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getmessages() {
        return messages;
    }

    public void setmessages(String messages) {
        this.messages = messages;
    }

    public Result(boolean success, String messages) {
        this.success = success;
        this.messages = messages;
    }
}
