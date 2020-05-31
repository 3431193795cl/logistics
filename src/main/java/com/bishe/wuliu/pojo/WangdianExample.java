package com.bishe.wuliu.pojo;

import java.util.ArrayList;
import java.util.List;

public class WangdianExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public WangdianExample() {
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

        public Criteria andSjIsNull() {
            addCriterion("sj is null");
            return (Criteria) this;
        }

        public Criteria andSjIsNotNull() {
            addCriterion("sj is not null");
            return (Criteria) this;
        }

        public Criteria andSjEqualTo(String value) {
            addCriterion("sj =", value, "sj");
            return (Criteria) this;
        }

        public Criteria andSjNotEqualTo(String value) {
            addCriterion("sj <>", value, "sj");
            return (Criteria) this;
        }

        public Criteria andSjGreaterThan(String value) {
            addCriterion("sj >", value, "sj");
            return (Criteria) this;
        }

        public Criteria andSjGreaterThanOrEqualTo(String value) {
            addCriterion("sj >=", value, "sj");
            return (Criteria) this;
        }

        public Criteria andSjLessThan(String value) {
            addCriterion("sj <", value, "sj");
            return (Criteria) this;
        }

        public Criteria andSjLessThanOrEqualTo(String value) {
            addCriterion("sj <=", value, "sj");
            return (Criteria) this;
        }

        public Criteria andSjLike(String value) {
            addCriterion("sj like", value, "sj");
            return (Criteria) this;
        }

        public Criteria andSjNotLike(String value) {
            addCriterion("sj not like", value, "sj");
            return (Criteria) this;
        }

        public Criteria andSjIn(List<String> values) {
            addCriterion("sj in", values, "sj");
            return (Criteria) this;
        }

        public Criteria andSjNotIn(List<String> values) {
            addCriterion("sj not in", values, "sj");
            return (Criteria) this;
        }

        public Criteria andSjBetween(String value1, String value2) {
            addCriterion("sj between", value1, value2, "sj");
            return (Criteria) this;
        }

        public Criteria andSjNotBetween(String value1, String value2) {
            addCriterion("sj not between", value1, value2, "sj");
            return (Criteria) this;
        }

        public Criteria andZlIsNull() {
            addCriterion("zl is null");
            return (Criteria) this;
        }

        public Criteria andZlIsNotNull() {
            addCriterion("zl is not null");
            return (Criteria) this;
        }

        public Criteria andZlEqualTo(String value) {
            addCriterion("zl =", value, "zl");
            return (Criteria) this;
        }

        public Criteria andZlNotEqualTo(String value) {
            addCriterion("zl <>", value, "zl");
            return (Criteria) this;
        }

        public Criteria andZlGreaterThan(String value) {
            addCriterion("zl >", value, "zl");
            return (Criteria) this;
        }

        public Criteria andZlGreaterThanOrEqualTo(String value) {
            addCriterion("zl >=", value, "zl");
            return (Criteria) this;
        }

        public Criteria andZlLessThan(String value) {
            addCriterion("zl <", value, "zl");
            return (Criteria) this;
        }

        public Criteria andZlLessThanOrEqualTo(String value) {
            addCriterion("zl <=", value, "zl");
            return (Criteria) this;
        }

        public Criteria andZlLike(String value) {
            addCriterion("zl like", value, "zl");
            return (Criteria) this;
        }

        public Criteria andZlNotLike(String value) {
            addCriterion("zl not like", value, "zl");
            return (Criteria) this;
        }

        public Criteria andZlIn(List<String> values) {
            addCriterion("zl in", values, "zl");
            return (Criteria) this;
        }

        public Criteria andZlNotIn(List<String> values) {
            addCriterion("zl not in", values, "zl");
            return (Criteria) this;
        }

        public Criteria andZlBetween(String value1, String value2) {
            addCriterion("zl between", value1, value2, "zl");
            return (Criteria) this;
        }

        public Criteria andZlNotBetween(String value1, String value2) {
            addCriterion("zl not between", value1, value2, "zl");
            return (Criteria) this;
        }

        public Criteria andJgIsNull() {
            addCriterion("jg is null");
            return (Criteria) this;
        }

        public Criteria andJgIsNotNull() {
            addCriterion("jg is not null");
            return (Criteria) this;
        }

        public Criteria andJgEqualTo(String value) {
            addCriterion("jg =", value, "jg");
            return (Criteria) this;
        }

        public Criteria andJgNotEqualTo(String value) {
            addCriterion("jg <>", value, "jg");
            return (Criteria) this;
        }

        public Criteria andJgGreaterThan(String value) {
            addCriterion("jg >", value, "jg");
            return (Criteria) this;
        }

        public Criteria andJgGreaterThanOrEqualTo(String value) {
            addCriterion("jg >=", value, "jg");
            return (Criteria) this;
        }

        public Criteria andJgLessThan(String value) {
            addCriterion("jg <", value, "jg");
            return (Criteria) this;
        }

        public Criteria andJgLessThanOrEqualTo(String value) {
            addCriterion("jg <=", value, "jg");
            return (Criteria) this;
        }

        public Criteria andJgLike(String value) {
            addCriterion("jg like", value, "jg");
            return (Criteria) this;
        }

        public Criteria andJgNotLike(String value) {
            addCriterion("jg not like", value, "jg");
            return (Criteria) this;
        }

        public Criteria andJgIn(List<String> values) {
            addCriterion("jg in", values, "jg");
            return (Criteria) this;
        }

        public Criteria andJgNotIn(List<String> values) {
            addCriterion("jg not in", values, "jg");
            return (Criteria) this;
        }

        public Criteria andJgBetween(String value1, String value2) {
            addCriterion("jg between", value1, value2, "jg");
            return (Criteria) this;
        }

        public Criteria andJgNotBetween(String value1, String value2) {
            addCriterion("jg not between", value1, value2, "jg");
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