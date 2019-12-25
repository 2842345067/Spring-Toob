package com.galaxy.springboot.entity;

import java.util.ArrayList;
import java.util.List;

public class ClassifyruErTblExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ClassifyruErTblExample() {
        oredCriteria = new ArrayList<Criteria>();
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
            criteria = new ArrayList<Criterion>();
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

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andClassifyruErIsNull() {
            addCriterion("classifyru_er is null");
            return (Criteria) this;
        }

        public Criteria andClassifyruErIsNotNull() {
            addCriterion("classifyru_er is not null");
            return (Criteria) this;
        }

        public Criteria andClassifyruErEqualTo(String value) {
            addCriterion("classifyru_er =", value, "classifyruEr");
            return (Criteria) this;
        }

        public Criteria andClassifyruErNotEqualTo(String value) {
            addCriterion("classifyru_er <>", value, "classifyruEr");
            return (Criteria) this;
        }

        public Criteria andClassifyruErGreaterThan(String value) {
            addCriterion("classifyru_er >", value, "classifyruEr");
            return (Criteria) this;
        }

        public Criteria andClassifyruErGreaterThanOrEqualTo(String value) {
            addCriterion("classifyru_er >=", value, "classifyruEr");
            return (Criteria) this;
        }

        public Criteria andClassifyruErLessThan(String value) {
            addCriterion("classifyru_er <", value, "classifyruEr");
            return (Criteria) this;
        }

        public Criteria andClassifyruErLessThanOrEqualTo(String value) {
            addCriterion("classifyru_er <=", value, "classifyruEr");
            return (Criteria) this;
        }

        public Criteria andClassifyruErLike(String value) {
            addCriterion("classifyru_er like", value, "classifyruEr");
            return (Criteria) this;
        }

        public Criteria andClassifyruErNotLike(String value) {
            addCriterion("classifyru_er not like", value, "classifyruEr");
            return (Criteria) this;
        }

        public Criteria andClassifyruErIn(List<String> values) {
            addCriterion("classifyru_er in", values, "classifyruEr");
            return (Criteria) this;
        }

        public Criteria andClassifyruErNotIn(List<String> values) {
            addCriterion("classifyru_er not in", values, "classifyruEr");
            return (Criteria) this;
        }

        public Criteria andClassifyruErBetween(String value1, String value2) {
            addCriterion("classifyru_er between", value1, value2, "classifyruEr");
            return (Criteria) this;
        }

        public Criteria andClassifyruErNotBetween(String value1, String value2) {
            addCriterion("classifyru_er not between", value1, value2, "classifyruEr");
            return (Criteria) this;
        }

        public Criteria andClassifyruIdIsNull() {
            addCriterion("classifyru_id is null");
            return (Criteria) this;
        }

        public Criteria andClassifyruIdIsNotNull() {
            addCriterion("classifyru_id is not null");
            return (Criteria) this;
        }

        public Criteria andClassifyruIdEqualTo(Integer value) {
            addCriterion("classifyru_id =", value, "classifyruId");
            return (Criteria) this;
        }

        public Criteria andClassifyruIdNotEqualTo(Integer value) {
            addCriterion("classifyru_id <>", value, "classifyruId");
            return (Criteria) this;
        }

        public Criteria andClassifyruIdGreaterThan(Integer value) {
            addCriterion("classifyru_id >", value, "classifyruId");
            return (Criteria) this;
        }

        public Criteria andClassifyruIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("classifyru_id >=", value, "classifyruId");
            return (Criteria) this;
        }

        public Criteria andClassifyruIdLessThan(Integer value) {
            addCriterion("classifyru_id <", value, "classifyruId");
            return (Criteria) this;
        }

        public Criteria andClassifyruIdLessThanOrEqualTo(Integer value) {
            addCriterion("classifyru_id <=", value, "classifyruId");
            return (Criteria) this;
        }

        public Criteria andClassifyruIdIn(List<Integer> values) {
            addCriterion("classifyru_id in", values, "classifyruId");
            return (Criteria) this;
        }

        public Criteria andClassifyruIdNotIn(List<Integer> values) {
            addCriterion("classifyru_id not in", values, "classifyruId");
            return (Criteria) this;
        }

        public Criteria andClassifyruIdBetween(Integer value1, Integer value2) {
            addCriterion("classifyru_id between", value1, value2, "classifyruId");
            return (Criteria) this;
        }

        public Criteria andClassifyruIdNotBetween(Integer value1, Integer value2) {
            addCriterion("classifyru_id not between", value1, value2, "classifyruId");
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