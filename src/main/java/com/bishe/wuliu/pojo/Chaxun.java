package com.bishe.wuliu.pojo;

import java.io.Serializable;

public class Chaxun implements Serializable{
    private String number;

    private String xingming;

    private String shoujihao;

    private String cfd;

    private String jsd;

    private String kd;

    private String xz;

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number == null ? null : number.trim();
    }

    public String getXingming() {
        return xingming;
    }

    public void setXingming(String xingming) {
        this.xingming = xingming == null ? null : xingming.trim();
    }

    public String getShoujihao() {
        return shoujihao;
    }

    public void setShoujihao(String shoujihao) {
        this.shoujihao = shoujihao == null ? null : shoujihao.trim();
    }

    public String getCfd() {
        return cfd;
    }

    public void setCfd(String cfd) {
        this.cfd = cfd == null ? null : cfd.trim();
    }

    public String getJsd() {
        return jsd;
    }

    public void setJsd(String jsd) {
        this.jsd = jsd == null ? null : jsd.trim();
    }

    public String getKd() {
        return kd;
    }

    public void setKd(String kd) {
        this.kd = kd == null ? null : kd.trim();
    }

    public String getXz() {
        return xz;
    }

    public void setXz(String xz) {
        this.xz = xz == null ? null : xz.trim();
    }
}