package com.bishe.wuliu.util;

import java.io.Serializable;

public class Result implements Serializable{
	 // �Ƿ�ɹ�
    private boolean success;
    // ������Ϣ
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
