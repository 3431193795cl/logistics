package com.bishe.wuliu.pojo;

import java.io.Serializable;

public class Wangdian implements Serializable{
    private String cfd;

    private String jsd;

    private String sj;

    private String zl;

    private String jg;

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

    public String getSj() {
        return sj;
    }

    public void setSj(String sj) {
        this.sj = sj == null ? null : sj.trim();
    }

    public String getZl() {
        return zl;
    }

    public void setZl(String zl) {
        this.zl = zl == null ? null : zl.trim();
    }

    public String getJg() {
        return jg;
    }

    public void setJg(String jg) {
        this.jg = jg == null ? null : jg.trim();
    }
}