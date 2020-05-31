package com.bishe.wuliu.pojo;

import java.util.ArrayList;
import java.util.List;

public class ChaxunExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ChaxunExample() {
        oredCriteria = new ArrayList<>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andNumberIsNull() {
            addCriterion("number is null");
            return (Criteria) this;
        }

        public Criteria andNumberIsNotNull() {
            addCriterion("number is not null");
            return (Criteria) this;
        }

        public Criteria andNumberEqualTo(String value) {
            addCriterion("number =", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberNotEqualTo(String value) {
            addCriterion("number <>", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberGreaterThan(String value) {
            addCriterion("number >", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberGreaterThanOrEqualTo(String value) {
            addCriterion("number >=", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberLessThan(String value) {
            addCriterion("number <", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberLessThanOrEqualTo(String value) {
            addCriterion("number <=", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberLike(String value) {
            addCriterion("number like", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberNotLike(String value) {
            addCriterion("number not like", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberIn(List<String> values) {
            addCriterion("number in", values, "number");
            return (Criteria) this;
        }

        public Criteria andNumberNotIn(List<String> values) {
            addCriterion("number not in", values, "number");
            return (Criteria) this;
        }

        public Criteria andNumberBetween(String value1, String value2) {
            addCriterion("number between", value1, value2, "number");
            return (Criteria) this;
        }

        public Criteria andNumberNotBetween(String value1, String value2) {
            addCriterion("number not between", value1, value2, "number");
            return (Criteria) this;
        }

        public Criteria andXingmingIsNull() {
            addCriterion("xingming is null");
            return (Criteria) this;
        }

        public Criteria andXingmingIsNotNull() {
            addCriterion("xingming is not null");
            return (Criteria) this;
        }

        public Criteria andXingmingEqualTo(String value) {
            addCriterion("xingming =", value, "xingming");
            return (Criteria) this;
        }

        public Criteria andXingmingNotEqualTo(String value) {
            addCriterion("xingming <>", value, "xingming");
            return (Criteria) this;
        }

        public Criteria andXingmingGreaterThan(String value) {
            addCriterion("xingming >", value, "xingming");
            return (Criteria) this;
        }

        public Criteria andXingmingGreaterThanOrEqualTo(String value) {
            addCriterion("xingming >=", value, "xingming");
            return (Criteria) this;
        }

        public Criteria andXingmingLessThan(String value) {
            addCriterion("xingming <", value, "xingming");
            return (Criteria) this;
        }

        public Criteria andXingmingLessThanOrEqualTo(String value) {
            addCriterion("xingming <=", value, "xingming");
            return (Criteria) this;
        }

        public Criteria andXingmingLike(String value) {
            addCriterion("xingming like", value, "xingming");
            return (Criteria) this;
        }

        public Criteria andXingmingNotLike(String value) {
            addCriterion("xingming not like", value, "xingming");
            return (Criteria) this;
        }

        public Criteria andXingmingIn(List<String> values) {
            addCriterion("xingming in", values, "xingming");
            return (Criteria) this;
        }

        public Criteria andXingmingNotIn(List<String> values) {
            addCriterion("xingming not in", values, "xingming");
            return (Criteria) this;
        }

        public Criteria andXingmingBetween(String value1, String value2) {
            addCriterion("xingming between", value1, value2, "xingming");
            return (Criteria) this;
        }

        public Criteria andXingmingNotBetween(String value1, String value2) {
            addCriterion("xingming not between", value1, value2, "xingming");
            return (Criteria) this;
        }

        public Criteria andShoujihaoIsNull() {
            addCriterion("shoujihao is null");
            return (Criteria) this;
        }

        public Criteria andShoujihaoIsNotNull() {
            addCriterion("shoujihao is not null");
            return (Criteria) this;
        }

        public Criteria andShoujihaoEqualTo(String value) {
            addCriterion("shoujihao =", value, "shoujihao");
            return (Criteria) this;
        }

        public Criteria andShoujihaoNotEqualTo(String value) {
            addCriterion("shoujihao <>", value, "shoujihao");
            return (Criteria) this;
        }

        public Criteria andShoujihaoGreaterThan(String value) {
            addCriterion("shoujihao >", value, "shoujihao");
            return (Criteria) this;
        }

        public Criteria andShoujihaoGreaterThanOrEqualTo(String value) {
            addCriterion("shoujihao >=", value, "shoujihao");
            return (Criteria) this;
        }

        public Criteria andShoujihaoLessThan(String value) {
            addCriterion("shoujihao <", value, "shoujihao");
            return (Criteria) this;
        }

        public Criteria andShoujihaoLessThanOrEqualTo(String value) {
            addCriterion("shoujihao <=", value, "shoujihao");
            return (Criteria) this;
        }

        public Criteria andShoujihaoLike(String value) {
            addCriterion("shoujihao like", value, "shoujihao");
            return (Criteria) this;
        }

        public Criteria andShoujihaoNotLike(String value) {
            addCriterion("shoujihao not like", value, "shoujihao");
            return (Criteria) this;
        }

        public Criteria andShoujihaoIn(List<String> values) {
            addCriterion("shoujihao in", values, "shoujihao");
            return (Criteria) this;
        }

        public Criteria andShoujihaoNotIn(List<String> values) {
            addCriterion("shoujihao not in", values, "shoujihao");
            return (Criteria) this;
        }

        public Criteria andShoujihaoBetween(String value1, String value2) {
            addCriterion("shoujihao between", value1, value2, "shoujihao");
            return (Criteria) this;
        }

        public Criteria andShoujihaoNotBetween(String value1, String value2) {
            addCriterion("shoujihao not between", value1, value2, "shoujihao");
            return (Criteria) this;
        }

        public Criteria andCfdIsNull() {
            addCriterion("cfd is null");
            return (Criteria) this;
        }

        public Criteria andCfdIsNotNull() {
            addCriterion("cfd is not null");
            return (Criteria) this;
        }

        public Criteria andCfdEqualTo(String value) {
            addCriterion("cfd =", value, "cfd");
            return (Criteria) this;
        }

        public Criteria andCfdNotEqualTo(String value) {
            addCriterion("cfd <>", value, "cfd");
            return (Criteria) this;
        }

        public Criteria andCfdGreaterThan(String value) {
            addCriterion("cfd >", value, "cfd");
            return (Criteria) this;
        }

        public Criteria andCfdGreaterThanOrEqualTo(String value) {
            addCriterion("cfd >=", value, "cfd");
            return (Criteria) this;
        }

        public Criteria andCfdLessThan(String value) {
            addCriterion("cfd <", value, "cfd");
            return (Criteria) this;
        }

        public Criteria andCfdLessThanOrEqualTo(String value) {
            addCriterion("cfd <=", value, "cfd");
            return (Criteria) this;
        }

        public Criteria andCfdLike(String value) {
            addCriterion("cfd like", value, "cfd");
            return (Criteria) this;
        }

        public Criteria andCfdNotLike(String value) {
            addCriterion("cfd not like", value, "cfd");
            return (Criteria) this;
        }

        public Criteria andCfdIn(List<String> values) {
            addCriterion("cfd in", values, "cfd");
            return (Criteria) this;
        }

        public Criteria andCfdNotIn(List<String> values) {
            addCriterion("cfd not in", values, "cfd");
            return (Criteria) this;
        }

        public Criteria andCfdBetween(String value1, String value2) {
            addCriterion("cfd between", value1, value2, "cfd");
            return (Criteria) this;
        }

        public Criteria andCfdNotBetween(String value1, String value2) {
            addCriterion("cfd not between", value1, value2, "cfd");
            return (Criteria) this;
        }

        public Criteria andJsdIsNull() {
            addCriterion("jsd is null");
            return (Criteria) this;
        }

        public Criteria andJsdIsNotNull() {
            addCriterion("jsd is not null");
            return (Criteria) this;
        }

        public Criteria andJsdEqualTo(String value) {
            addCriterion("jsd =", value, "jsd");
            return (Criteria) this;
        }

        public Criteria andJsdNotEqualTo(String value) {
            addCriterion("jsd <>", value, "jsd");
            return (Criteria) this;
        }

        public Criteria andJsdGreaterThan(String value) {
            addCriterion("jsd >", value, "jsd");
            return (Criteria) this;
        }

        public Criteria andJsdGreaterThanOrEqualTo(String value) {
            addCriterion("jsd >=", value, "jsd");
            return (Criteria) this;
        }

        public Criteria andJsdLessThan(String value) {
            addCriterion("jsd <", value, "jsd");
            return (Criteria) this;
        }

        public Criteria andJsdLessThanOrEqualTo(String value) {
            addCriterion("jsd <=", value, "jsd");
            return (Criteria) this;
        }

        public Criteria andJsdLike(String value) {
            addCriterion("jsd like", value, "jsd");
            return (Criteria) this;
        }

        public Criteria andJsdNotLike(String value) {
            addCriterion("jsd not like", value, "jsd");
            return (Criteria) this;
        }

        public Criteria andJsdIn(List<String> values) {
            addCriterion("jsd in", values, "jsd");
            return (Criteria) this;
        }

        public Criteria andJsdNotIn(List<String> values) {
            addCriterion("jsd not in", values, "jsd");
            return (Criteria) this;
        }

        public Criteria andJsdBetween(String value1, String value2) {
            addCriterion("jsd between", value1, value2, "jsd");
            return (Criteria) this;
        }

        public Criteria andJsdNotBetween(String value1, String value2) {
            addCriterion("jsd not between", value1, value2, "jsd");
            return (Criteria) this;
        }

        public Criteria andKdIsNull() {
            addCriterion("kd is null");
            return (Criteria) this;
        }

        public Criteria andKdIsNotNull() {
            addCriterion("kd is not null");
            return (Criteria) this;
        }

        public Criteria andKdEqualTo(String value) {
            addCriterion("kd =", value, "kd");
            return (Criteria) this;
        }

        public Criteria andKdNotEqualTo(String value) {
            addCriterion("kd <>", value, "kd");
            return (Criteria) this;
        }

        public Criteria andKdGreaterThan(String value) {
            addCriterion("kd >", value, "kd");
            return (Criteria) this;
        }

        public Criteria andKdGreaterThanOrEqualTo(String value) {
            addCriterion("kd >=", value, "kd");
            return (Criteria) this;
        }

        public Criteria andKdLessThan(String value) {
            addCriterion("kd <", value, "kd");
            return (Criteria) this;
        }

        public Criteria andKdLessThanOrEqualTo(String value) {
            addCriterion("kd <=", value, "kd");
            return (Criteria) this;
        }

        public Criteria andKdLike(String value) {
            addCriterion("kd like", value, "kd");
            return (Criteria) this;
        }

        public Criteria andKdNotLike(String value) {
            addCriterion("kd not like", value, "kd");
            return (Criteria) this;
        }

        public Criteria andKdIn(List<String> values) {
            addCriterion("kd in", values, "kd");
            return (Criteria) this;
        }

        public Criteria andKdNotIn(List<String> values) {
            addCriterion("kd not in", values, "kd");
            return (Criteria) this;
        }

        public Criteria andKdBetween(String value1, String value2) {
            addCriterion("kd between", value1, value2, "kd");
            return (Criteria) this;
        }

        public Criteria andKdNotBetween(String value1, String value2) {
            addCriterion("kd not between", value1, value2, "kd");
            return (Criteria) this;
        }

        public Criteria andXzIsNull() {
            addCriterion("xz is null");
            return (Criteria) this;
        }

        public Criteria andXzIsNotNull() {
            addCriterion("xz is not null");
            return (Criteria) this;
        }

        public Criteria andXzEqualTo(String value) {
            addCriterion("xz =", value, "xz");
            return (Criteria) this;
        }

        public Criteria andXzNotEqualTo(String value) {
            addCriterion("xz <>", value, "xz");
            return (Criteria) this;
        }

        public Criteria andXzGreaterThan(String value) {
            addCriterion("xz >", value, "xz");
            return (Criteria) this;
        }

        public Criteria andXzGreaterThanOrEqualTo(String value) {
            addCriterion("xz >=", value, "xz");
            return (Criteria) this;
        }

        public Criteria andXzLessThan(String value) {
            addCriterion("xz <", value, "xz");
            return (Criteria) this;
        }

        public Criteria andXzLessThanOrEqualTo(String value) {
            addCriterion("xz <=", value, "xz");
            return (Criteria) this;
        }

        public Criteria andXzLike(String value) {
            addCriterion("xz like", value, "xz");
            return (Criteria) this;
        }

        public Criteria andXzNotLike(String value) {
            addCriterion("xz not like", value, "xz");
            return (Criteria) this;
        }

        public Criteria andXzIn(List<String> values) {
            addCriterion("xz in", values, "xz");
            return (Criteria) this;
        }

        public Criteria andXzNotIn(List<String> values) {
            addCriterion("xz not in", values, "xz");
            return (Criteria) this;
        }

        public Criteria andXzBetween(String value1, String value2) {
            addCriterion("xz between", value1, value2, "xz");
            return (Criteria) this;
        }

        public Criteria andXzNotBetween(String value1, String value2) {
            addCriterion("xz not between", value1, value2, "xz");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {
        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}