package com.bdqn.pojo.flight;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class SpecialTicketExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SpecialTicketExample() {
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

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andFlightidIsNull() {
            addCriterion("FlightID is null");
            return (Criteria) this;
        }

        public Criteria andFlightidIsNotNull() {
            addCriterion("FlightID is not null");
            return (Criteria) this;
        }

        public Criteria andFlightidEqualTo(Integer value) {
            addCriterion("FlightID =", value, "flightid");
            return (Criteria) this;
        }

        public Criteria andFlightidNotEqualTo(Integer value) {
            addCriterion("FlightID <>", value, "flightid");
            return (Criteria) this;
        }

        public Criteria andFlightidGreaterThan(Integer value) {
            addCriterion("FlightID >", value, "flightid");
            return (Criteria) this;
        }

        public Criteria andFlightidGreaterThanOrEqualTo(Integer value) {
            addCriterion("FlightID >=", value, "flightid");
            return (Criteria) this;
        }

        public Criteria andFlightidLessThan(Integer value) {
            addCriterion("FlightID <", value, "flightid");
            return (Criteria) this;
        }

        public Criteria andFlightidLessThanOrEqualTo(Integer value) {
            addCriterion("FlightID <=", value, "flightid");
            return (Criteria) this;
        }

        public Criteria andFlightidIn(List<Integer> values) {
            addCriterion("FlightID in", values, "flightid");
            return (Criteria) this;
        }

        public Criteria andFlightidNotIn(List<Integer> values) {
            addCriterion("FlightID not in", values, "flightid");
            return (Criteria) this;
        }

        public Criteria andFlightidBetween(Integer value1, Integer value2) {
            addCriterion("FlightID between", value1, value2, "flightid");
            return (Criteria) this;
        }

        public Criteria andFlightidNotBetween(Integer value1, Integer value2) {
            addCriterion("FlightID not between", value1, value2, "flightid");
            return (Criteria) this;
        }

        public Criteria andFlightnumberIsNull() {
            addCriterion("FlightNumber is null");
            return (Criteria) this;
        }

        public Criteria andFlightnumberIsNotNull() {
            addCriterion("FlightNumber is not null");
            return (Criteria) this;
        }

        public Criteria andFlightnumberEqualTo(String value) {
            addCriterion("FlightNumber =", value, "flightnumber");
            return (Criteria) this;
        }

        public Criteria andFlightnumberNotEqualTo(String value) {
            addCriterion("FlightNumber <>", value, "flightnumber");
            return (Criteria) this;
        }

        public Criteria andFlightnumberGreaterThan(String value) {
            addCriterion("FlightNumber >", value, "flightnumber");
            return (Criteria) this;
        }

        public Criteria andFlightnumberGreaterThanOrEqualTo(String value) {
            addCriterion("FlightNumber >=", value, "flightnumber");
            return (Criteria) this;
        }

        public Criteria andFlightnumberLessThan(String value) {
            addCriterion("FlightNumber <", value, "flightnumber");
            return (Criteria) this;
        }

        public Criteria andFlightnumberLessThanOrEqualTo(String value) {
            addCriterion("FlightNumber <=", value, "flightnumber");
            return (Criteria) this;
        }

        public Criteria andFlightnumberLike(String value) {
            addCriterion("FlightNumber like", value, "flightnumber");
            return (Criteria) this;
        }

        public Criteria andFlightnumberNotLike(String value) {
            addCriterion("FlightNumber not like", value, "flightnumber");
            return (Criteria) this;
        }

        public Criteria andFlightnumberIn(List<String> values) {
            addCriterion("FlightNumber in", values, "flightnumber");
            return (Criteria) this;
        }

        public Criteria andFlightnumberNotIn(List<String> values) {
            addCriterion("FlightNumber not in", values, "flightnumber");
            return (Criteria) this;
        }

        public Criteria andFlightnumberBetween(String value1, String value2) {
            addCriterion("FlightNumber between", value1, value2, "flightnumber");
            return (Criteria) this;
        }

        public Criteria andFlightnumberNotBetween(String value1, String value2) {
            addCriterion("FlightNumber not between", value1, value2, "flightnumber");
            return (Criteria) this;
        }

        public Criteria andCompanyidIsNull() {
            addCriterion("CompanyID is null");
            return (Criteria) this;
        }

        public Criteria andCompanyidIsNotNull() {
            addCriterion("CompanyID is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyidEqualTo(Integer value) {
            addCriterion("CompanyID =", value, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidNotEqualTo(Integer value) {
            addCriterion("CompanyID <>", value, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidGreaterThan(Integer value) {
            addCriterion("CompanyID >", value, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidGreaterThanOrEqualTo(Integer value) {
            addCriterion("CompanyID >=", value, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidLessThan(Integer value) {
            addCriterion("CompanyID <", value, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidLessThanOrEqualTo(Integer value) {
            addCriterion("CompanyID <=", value, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidIn(List<Integer> values) {
            addCriterion("CompanyID in", values, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidNotIn(List<Integer> values) {
            addCriterion("CompanyID not in", values, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidBetween(Integer value1, Integer value2) {
            addCriterion("CompanyID between", value1, value2, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidNotBetween(Integer value1, Integer value2) {
            addCriterion("CompanyID not between", value1, value2, "companyid");
            return (Criteria) this;
        }

        public Criteria andChufacompanyIsNull() {
            addCriterion("chufaCompany is null");
            return (Criteria) this;
        }

        public Criteria andChufacompanyIsNotNull() {
            addCriterion("chufaCompany is not null");
            return (Criteria) this;
        }

        public Criteria andChufacompanyEqualTo(String value) {
            addCriterion("chufaCompany =", value, "chufacompany");
            return (Criteria) this;
        }

        public Criteria andChufacompanyNotEqualTo(String value) {
            addCriterion("chufaCompany <>", value, "chufacompany");
            return (Criteria) this;
        }

        public Criteria andChufacompanyGreaterThan(String value) {
            addCriterion("chufaCompany >", value, "chufacompany");
            return (Criteria) this;
        }

        public Criteria andChufacompanyGreaterThanOrEqualTo(String value) {
            addCriterion("chufaCompany >=", value, "chufacompany");
            return (Criteria) this;
        }

        public Criteria andChufacompanyLessThan(String value) {
            addCriterion("chufaCompany <", value, "chufacompany");
            return (Criteria) this;
        }

        public Criteria andChufacompanyLessThanOrEqualTo(String value) {
            addCriterion("chufaCompany <=", value, "chufacompany");
            return (Criteria) this;
        }

        public Criteria andChufacompanyLike(String value) {
            addCriterion("chufaCompany like", value, "chufacompany");
            return (Criteria) this;
        }

        public Criteria andChufacompanyNotLike(String value) {
            addCriterion("chufaCompany not like", value, "chufacompany");
            return (Criteria) this;
        }

        public Criteria andChufacompanyIn(List<String> values) {
            addCriterion("chufaCompany in", values, "chufacompany");
            return (Criteria) this;
        }

        public Criteria andChufacompanyNotIn(List<String> values) {
            addCriterion("chufaCompany not in", values, "chufacompany");
            return (Criteria) this;
        }

        public Criteria andChufacompanyBetween(String value1, String value2) {
            addCriterion("chufaCompany between", value1, value2, "chufacompany");
            return (Criteria) this;
        }

        public Criteria andChufacompanyNotBetween(String value1, String value2) {
            addCriterion("chufaCompany not between", value1, value2, "chufacompany");
            return (Criteria) this;
        }

        public Criteria andDaodacompanyIsNull() {
            addCriterion("daodaCompany is null");
            return (Criteria) this;
        }

        public Criteria andDaodacompanyIsNotNull() {
            addCriterion("daodaCompany is not null");
            return (Criteria) this;
        }

        public Criteria andDaodacompanyEqualTo(String value) {
            addCriterion("daodaCompany =", value, "daodacompany");
            return (Criteria) this;
        }

        public Criteria andDaodacompanyNotEqualTo(String value) {
            addCriterion("daodaCompany <>", value, "daodacompany");
            return (Criteria) this;
        }

        public Criteria andDaodacompanyGreaterThan(String value) {
            addCriterion("daodaCompany >", value, "daodacompany");
            return (Criteria) this;
        }

        public Criteria andDaodacompanyGreaterThanOrEqualTo(String value) {
            addCriterion("daodaCompany >=", value, "daodacompany");
            return (Criteria) this;
        }

        public Criteria andDaodacompanyLessThan(String value) {
            addCriterion("daodaCompany <", value, "daodacompany");
            return (Criteria) this;
        }

        public Criteria andDaodacompanyLessThanOrEqualTo(String value) {
            addCriterion("daodaCompany <=", value, "daodacompany");
            return (Criteria) this;
        }

        public Criteria andDaodacompanyLike(String value) {
            addCriterion("daodaCompany like", value, "daodacompany");
            return (Criteria) this;
        }

        public Criteria andDaodacompanyNotLike(String value) {
            addCriterion("daodaCompany not like", value, "daodacompany");
            return (Criteria) this;
        }

        public Criteria andDaodacompanyIn(List<String> values) {
            addCriterion("daodaCompany in", values, "daodacompany");
            return (Criteria) this;
        }

        public Criteria andDaodacompanyNotIn(List<String> values) {
            addCriterion("daodaCompany not in", values, "daodacompany");
            return (Criteria) this;
        }

        public Criteria andDaodacompanyBetween(String value1, String value2) {
            addCriterion("daodaCompany between", value1, value2, "daodacompany");
            return (Criteria) this;
        }

        public Criteria andDaodacompanyNotBetween(String value1, String value2) {
            addCriterion("daodaCompany not between", value1, value2, "daodacompany");
            return (Criteria) this;
        }

        public Criteria andAirtypeIsNull() {
            addCriterion("AirType is null");
            return (Criteria) this;
        }

        public Criteria andAirtypeIsNotNull() {
            addCriterion("AirType is not null");
            return (Criteria) this;
        }

        public Criteria andAirtypeEqualTo(String value) {
            addCriterion("AirType =", value, "airtype");
            return (Criteria) this;
        }

        public Criteria andAirtypeNotEqualTo(String value) {
            addCriterion("AirType <>", value, "airtype");
            return (Criteria) this;
        }

        public Criteria andAirtypeGreaterThan(String value) {
            addCriterion("AirType >", value, "airtype");
            return (Criteria) this;
        }

        public Criteria andAirtypeGreaterThanOrEqualTo(String value) {
            addCriterion("AirType >=", value, "airtype");
            return (Criteria) this;
        }

        public Criteria andAirtypeLessThan(String value) {
            addCriterion("AirType <", value, "airtype");
            return (Criteria) this;
        }

        public Criteria andAirtypeLessThanOrEqualTo(String value) {
            addCriterion("AirType <=", value, "airtype");
            return (Criteria) this;
        }

        public Criteria andAirtypeLike(String value) {
            addCriterion("AirType like", value, "airtype");
            return (Criteria) this;
        }

        public Criteria andAirtypeNotLike(String value) {
            addCriterion("AirType not like", value, "airtype");
            return (Criteria) this;
        }

        public Criteria andAirtypeIn(List<String> values) {
            addCriterion("AirType in", values, "airtype");
            return (Criteria) this;
        }

        public Criteria andAirtypeNotIn(List<String> values) {
            addCriterion("AirType not in", values, "airtype");
            return (Criteria) this;
        }

        public Criteria andAirtypeBetween(String value1, String value2) {
            addCriterion("AirType between", value1, value2, "airtype");
            return (Criteria) this;
        }

        public Criteria andAirtypeNotBetween(String value1, String value2) {
            addCriterion("AirType not between", value1, value2, "airtype");
            return (Criteria) this;
        }

        public Criteria andSeatidIsNull() {
            addCriterion("SeatID is null");
            return (Criteria) this;
        }

        public Criteria andSeatidIsNotNull() {
            addCriterion("SeatID is not null");
            return (Criteria) this;
        }

        public Criteria andSeatidEqualTo(String value) {
            addCriterion("SeatID =", value, "seatid");
            return (Criteria) this;
        }

        public Criteria andSeatidNotEqualTo(String value) {
            addCriterion("SeatID <>", value, "seatid");
            return (Criteria) this;
        }

        public Criteria andSeatidGreaterThan(String value) {
            addCriterion("SeatID >", value, "seatid");
            return (Criteria) this;
        }

        public Criteria andSeatidGreaterThanOrEqualTo(String value) {
            addCriterion("SeatID >=", value, "seatid");
            return (Criteria) this;
        }

        public Criteria andSeatidLessThan(String value) {
            addCriterion("SeatID <", value, "seatid");
            return (Criteria) this;
        }

        public Criteria andSeatidLessThanOrEqualTo(String value) {
            addCriterion("SeatID <=", value, "seatid");
            return (Criteria) this;
        }

        public Criteria andSeatidLike(String value) {
            addCriterion("SeatID like", value, "seatid");
            return (Criteria) this;
        }

        public Criteria andSeatidNotLike(String value) {
            addCriterion("SeatID not like", value, "seatid");
            return (Criteria) this;
        }

        public Criteria andSeatidIn(List<String> values) {
            addCriterion("SeatID in", values, "seatid");
            return (Criteria) this;
        }

        public Criteria andSeatidNotIn(List<String> values) {
            addCriterion("SeatID not in", values, "seatid");
            return (Criteria) this;
        }

        public Criteria andSeatidBetween(String value1, String value2) {
            addCriterion("SeatID between", value1, value2, "seatid");
            return (Criteria) this;
        }

        public Criteria andSeatidNotBetween(String value1, String value2) {
            addCriterion("SeatID not between", value1, value2, "seatid");
            return (Criteria) this;
        }

        public Criteria andBegintimeIsNull() {
            addCriterion("BeginTime is null");
            return (Criteria) this;
        }

        public Criteria andBegintimeIsNotNull() {
            addCriterion("BeginTime is not null");
            return (Criteria) this;
        }

        public Criteria andBegintimeEqualTo(Date value) {
            addCriterionForJDBCDate("BeginTime =", value, "begintime");
            return (Criteria) this;
        }

        public Criteria andBegintimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("BeginTime <>", value, "begintime");
            return (Criteria) this;
        }

        public Criteria andBegintimeGreaterThan(Date value) {
            addCriterionForJDBCDate("BeginTime >", value, "begintime");
            return (Criteria) this;
        }

        public Criteria andBegintimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("BeginTime >=", value, "begintime");
            return (Criteria) this;
        }

        public Criteria andBegintimeLessThan(Date value) {
            addCriterionForJDBCDate("BeginTime <", value, "begintime");
            return (Criteria) this;
        }

        public Criteria andBegintimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("BeginTime <=", value, "begintime");
            return (Criteria) this;
        }

        public Criteria andBegintimeIn(List<Date> values) {
            addCriterionForJDBCDate("BeginTime in", values, "begintime");
            return (Criteria) this;
        }

        public Criteria andBegintimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("BeginTime not in", values, "begintime");
            return (Criteria) this;
        }

        public Criteria andBegintimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("BeginTime between", value1, value2, "begintime");
            return (Criteria) this;
        }

        public Criteria andBegintimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("BeginTime not between", value1, value2, "begintime");
            return (Criteria) this;
        }

        public Criteria andChufatimeIsNull() {
            addCriterion("chufaTime is null");
            return (Criteria) this;
        }

        public Criteria andChufatimeIsNotNull() {
            addCriterion("chufaTime is not null");
            return (Criteria) this;
        }

        public Criteria andChufatimeEqualTo(String value) {
            addCriterion("chufaTime =", value, "chufatime");
            return (Criteria) this;
        }

        public Criteria andChufatimeNotEqualTo(String value) {
            addCriterion("chufaTime <>", value, "chufatime");
            return (Criteria) this;
        }

        public Criteria andChufatimeGreaterThan(String value) {
            addCriterion("chufaTime >", value, "chufatime");
            return (Criteria) this;
        }

        public Criteria andChufatimeGreaterThanOrEqualTo(String value) {
            addCriterion("chufaTime >=", value, "chufatime");
            return (Criteria) this;
        }

        public Criteria andChufatimeLessThan(String value) {
            addCriterion("chufaTime <", value, "chufatime");
            return (Criteria) this;
        }

        public Criteria andChufatimeLessThanOrEqualTo(String value) {
            addCriterion("chufaTime <=", value, "chufatime");
            return (Criteria) this;
        }

        public Criteria andChufatimeLike(String value) {
            addCriterion("chufaTime like", value, "chufatime");
            return (Criteria) this;
        }

        public Criteria andChufatimeNotLike(String value) {
            addCriterion("chufaTime not like", value, "chufatime");
            return (Criteria) this;
        }

        public Criteria andChufatimeIn(List<String> values) {
            addCriterion("chufaTime in", values, "chufatime");
            return (Criteria) this;
        }

        public Criteria andChufatimeNotIn(List<String> values) {
            addCriterion("chufaTime not in", values, "chufatime");
            return (Criteria) this;
        }

        public Criteria andChufatimeBetween(String value1, String value2) {
            addCriterion("chufaTime between", value1, value2, "chufatime");
            return (Criteria) this;
        }

        public Criteria andChufatimeNotBetween(String value1, String value2) {
            addCriterion("chufaTime not between", value1, value2, "chufatime");
            return (Criteria) this;
        }

        public Criteria andDaodatimeIsNull() {
            addCriterion("daodaTime is null");
            return (Criteria) this;
        }

        public Criteria andDaodatimeIsNotNull() {
            addCriterion("daodaTime is not null");
            return (Criteria) this;
        }

        public Criteria andDaodatimeEqualTo(String value) {
            addCriterion("daodaTime =", value, "daodatime");
            return (Criteria) this;
        }

        public Criteria andDaodatimeNotEqualTo(String value) {
            addCriterion("daodaTime <>", value, "daodatime");
            return (Criteria) this;
        }

        public Criteria andDaodatimeGreaterThan(String value) {
            addCriterion("daodaTime >", value, "daodatime");
            return (Criteria) this;
        }

        public Criteria andDaodatimeGreaterThanOrEqualTo(String value) {
            addCriterion("daodaTime >=", value, "daodatime");
            return (Criteria) this;
        }

        public Criteria andDaodatimeLessThan(String value) {
            addCriterion("daodaTime <", value, "daodatime");
            return (Criteria) this;
        }

        public Criteria andDaodatimeLessThanOrEqualTo(String value) {
            addCriterion("daodaTime <=", value, "daodatime");
            return (Criteria) this;
        }

        public Criteria andDaodatimeLike(String value) {
            addCriterion("daodaTime like", value, "daodatime");
            return (Criteria) this;
        }

        public Criteria andDaodatimeNotLike(String value) {
            addCriterion("daodaTime not like", value, "daodatime");
            return (Criteria) this;
        }

        public Criteria andDaodatimeIn(List<String> values) {
            addCriterion("daodaTime in", values, "daodatime");
            return (Criteria) this;
        }

        public Criteria andDaodatimeNotIn(List<String> values) {
            addCriterion("daodaTime not in", values, "daodatime");
            return (Criteria) this;
        }

        public Criteria andDaodatimeBetween(String value1, String value2) {
            addCriterion("daodaTime between", value1, value2, "daodatime");
            return (Criteria) this;
        }

        public Criteria andDaodatimeNotBetween(String value1, String value2) {
            addCriterion("daodaTime not between", value1, value2, "daodatime");
            return (Criteria) this;
        }

        public Criteria andTotaltimeIsNull() {
            addCriterion("totalTime is null");
            return (Criteria) this;
        }

        public Criteria andTotaltimeIsNotNull() {
            addCriterion("totalTime is not null");
            return (Criteria) this;
        }

        public Criteria andTotaltimeEqualTo(String value) {
            addCriterion("totalTime =", value, "totaltime");
            return (Criteria) this;
        }

        public Criteria andTotaltimeNotEqualTo(String value) {
            addCriterion("totalTime <>", value, "totaltime");
            return (Criteria) this;
        }

        public Criteria andTotaltimeGreaterThan(String value) {
            addCriterion("totalTime >", value, "totaltime");
            return (Criteria) this;
        }

        public Criteria andTotaltimeGreaterThanOrEqualTo(String value) {
            addCriterion("totalTime >=", value, "totaltime");
            return (Criteria) this;
        }

        public Criteria andTotaltimeLessThan(String value) {
            addCriterion("totalTime <", value, "totaltime");
            return (Criteria) this;
        }

        public Criteria andTotaltimeLessThanOrEqualTo(String value) {
            addCriterion("totalTime <=", value, "totaltime");
            return (Criteria) this;
        }

        public Criteria andTotaltimeLike(String value) {
            addCriterion("totalTime like", value, "totaltime");
            return (Criteria) this;
        }

        public Criteria andTotaltimeNotLike(String value) {
            addCriterion("totalTime not like", value, "totaltime");
            return (Criteria) this;
        }

        public Criteria andTotaltimeIn(List<String> values) {
            addCriterion("totalTime in", values, "totaltime");
            return (Criteria) this;
        }

        public Criteria andTotaltimeNotIn(List<String> values) {
            addCriterion("totalTime not in", values, "totaltime");
            return (Criteria) this;
        }

        public Criteria andTotaltimeBetween(String value1, String value2) {
            addCriterion("totalTime between", value1, value2, "totaltime");
            return (Criteria) this;
        }

        public Criteria andTotaltimeNotBetween(String value1, String value2) {
            addCriterion("totalTime not between", value1, value2, "totaltime");
            return (Criteria) this;
        }

        public Criteria andBegincityIsNull() {
            addCriterion("BeginCity is null");
            return (Criteria) this;
        }

        public Criteria andBegincityIsNotNull() {
            addCriterion("BeginCity is not null");
            return (Criteria) this;
        }

        public Criteria andBegincityEqualTo(String value) {
            addCriterion("BeginCity =", value, "begincity");
            return (Criteria) this;
        }

        public Criteria andBegincityNotEqualTo(String value) {
            addCriterion("BeginCity <>", value, "begincity");
            return (Criteria) this;
        }

        public Criteria andBegincityGreaterThan(String value) {
            addCriterion("BeginCity >", value, "begincity");
            return (Criteria) this;
        }

        public Criteria andBegincityGreaterThanOrEqualTo(String value) {
            addCriterion("BeginCity >=", value, "begincity");
            return (Criteria) this;
        }

        public Criteria andBegincityLessThan(String value) {
            addCriterion("BeginCity <", value, "begincity");
            return (Criteria) this;
        }

        public Criteria andBegincityLessThanOrEqualTo(String value) {
            addCriterion("BeginCity <=", value, "begincity");
            return (Criteria) this;
        }

        public Criteria andBegincityLike(String value) {
            addCriterion("BeginCity like", value, "begincity");
            return (Criteria) this;
        }

        public Criteria andBegincityNotLike(String value) {
            addCriterion("BeginCity not like", value, "begincity");
            return (Criteria) this;
        }

        public Criteria andBegincityIn(List<String> values) {
            addCriterion("BeginCity in", values, "begincity");
            return (Criteria) this;
        }

        public Criteria andBegincityNotIn(List<String> values) {
            addCriterion("BeginCity not in", values, "begincity");
            return (Criteria) this;
        }

        public Criteria andBegincityBetween(String value1, String value2) {
            addCriterion("BeginCity between", value1, value2, "begincity");
            return (Criteria) this;
        }

        public Criteria andBegincityNotBetween(String value1, String value2) {
            addCriterion("BeginCity not between", value1, value2, "begincity");
            return (Criteria) this;
        }

        public Criteria andTransferscityIsNull() {
            addCriterion("TransfersCity is null");
            return (Criteria) this;
        }

        public Criteria andTransferscityIsNotNull() {
            addCriterion("TransfersCity is not null");
            return (Criteria) this;
        }

        public Criteria andTransferscityEqualTo(String value) {
            addCriterion("TransfersCity =", value, "transferscity");
            return (Criteria) this;
        }

        public Criteria andTransferscityNotEqualTo(String value) {
            addCriterion("TransfersCity <>", value, "transferscity");
            return (Criteria) this;
        }

        public Criteria andTransferscityGreaterThan(String value) {
            addCriterion("TransfersCity >", value, "transferscity");
            return (Criteria) this;
        }

        public Criteria andTransferscityGreaterThanOrEqualTo(String value) {
            addCriterion("TransfersCity >=", value, "transferscity");
            return (Criteria) this;
        }

        public Criteria andTransferscityLessThan(String value) {
            addCriterion("TransfersCity <", value, "transferscity");
            return (Criteria) this;
        }

        public Criteria andTransferscityLessThanOrEqualTo(String value) {
            addCriterion("TransfersCity <=", value, "transferscity");
            return (Criteria) this;
        }

        public Criteria andTransferscityLike(String value) {
            addCriterion("TransfersCity like", value, "transferscity");
            return (Criteria) this;
        }

        public Criteria andTransferscityNotLike(String value) {
            addCriterion("TransfersCity not like", value, "transferscity");
            return (Criteria) this;
        }

        public Criteria andTransferscityIn(List<String> values) {
            addCriterion("TransfersCity in", values, "transferscity");
            return (Criteria) this;
        }

        public Criteria andTransferscityNotIn(List<String> values) {
            addCriterion("TransfersCity not in", values, "transferscity");
            return (Criteria) this;
        }

        public Criteria andTransferscityBetween(String value1, String value2) {
            addCriterion("TransfersCity between", value1, value2, "transferscity");
            return (Criteria) this;
        }

        public Criteria andTransferscityNotBetween(String value1, String value2) {
            addCriterion("TransfersCity not between", value1, value2, "transferscity");
            return (Criteria) this;
        }

        public Criteria andDestinationIsNull() {
            addCriterion("Destination is null");
            return (Criteria) this;
        }

        public Criteria andDestinationIsNotNull() {
            addCriterion("Destination is not null");
            return (Criteria) this;
        }

        public Criteria andDestinationEqualTo(String value) {
            addCriterion("Destination =", value, "destination");
            return (Criteria) this;
        }

        public Criteria andDestinationNotEqualTo(String value) {
            addCriterion("Destination <>", value, "destination");
            return (Criteria) this;
        }

        public Criteria andDestinationGreaterThan(String value) {
            addCriterion("Destination >", value, "destination");
            return (Criteria) this;
        }

        public Criteria andDestinationGreaterThanOrEqualTo(String value) {
            addCriterion("Destination >=", value, "destination");
            return (Criteria) this;
        }

        public Criteria andDestinationLessThan(String value) {
            addCriterion("Destination <", value, "destination");
            return (Criteria) this;
        }

        public Criteria andDestinationLessThanOrEqualTo(String value) {
            addCriterion("Destination <=", value, "destination");
            return (Criteria) this;
        }

        public Criteria andDestinationLike(String value) {
            addCriterion("Destination like", value, "destination");
            return (Criteria) this;
        }

        public Criteria andDestinationNotLike(String value) {
            addCriterion("Destination not like", value, "destination");
            return (Criteria) this;
        }

        public Criteria andDestinationIn(List<String> values) {
            addCriterion("Destination in", values, "destination");
            return (Criteria) this;
        }

        public Criteria andDestinationNotIn(List<String> values) {
            addCriterion("Destination not in", values, "destination");
            return (Criteria) this;
        }

        public Criteria andDestinationBetween(String value1, String value2) {
            addCriterion("Destination between", value1, value2, "destination");
            return (Criteria) this;
        }

        public Criteria andDestinationNotBetween(String value1, String value2) {
            addCriterion("Destination not between", value1, value2, "destination");
            return (Criteria) this;
        }

        public Criteria andRoundtypeIsNull() {
            addCriterion("RoundType is null");
            return (Criteria) this;
        }

        public Criteria andRoundtypeIsNotNull() {
            addCriterion("RoundType is not null");
            return (Criteria) this;
        }

        public Criteria andRoundtypeEqualTo(String value) {
            addCriterion("RoundType =", value, "roundtype");
            return (Criteria) this;
        }

        public Criteria andRoundtypeNotEqualTo(String value) {
            addCriterion("RoundType <>", value, "roundtype");
            return (Criteria) this;
        }

        public Criteria andRoundtypeGreaterThan(String value) {
            addCriterion("RoundType >", value, "roundtype");
            return (Criteria) this;
        }

        public Criteria andRoundtypeGreaterThanOrEqualTo(String value) {
            addCriterion("RoundType >=", value, "roundtype");
            return (Criteria) this;
        }

        public Criteria andRoundtypeLessThan(String value) {
            addCriterion("RoundType <", value, "roundtype");
            return (Criteria) this;
        }

        public Criteria andRoundtypeLessThanOrEqualTo(String value) {
            addCriterion("RoundType <=", value, "roundtype");
            return (Criteria) this;
        }

        public Criteria andRoundtypeLike(String value) {
            addCriterion("RoundType like", value, "roundtype");
            return (Criteria) this;
        }

        public Criteria andRoundtypeNotLike(String value) {
            addCriterion("RoundType not like", value, "roundtype");
            return (Criteria) this;
        }

        public Criteria andRoundtypeIn(List<String> values) {
            addCriterion("RoundType in", values, "roundtype");
            return (Criteria) this;
        }

        public Criteria andRoundtypeNotIn(List<String> values) {
            addCriterion("RoundType not in", values, "roundtype");
            return (Criteria) this;
        }

        public Criteria andRoundtypeBetween(String value1, String value2) {
            addCriterion("RoundType between", value1, value2, "roundtype");
            return (Criteria) this;
        }

        public Criteria andRoundtypeNotBetween(String value1, String value2) {
            addCriterion("RoundType not between", value1, value2, "roundtype");
            return (Criteria) this;
        }

        public Criteria andZhundianIsNull() {
            addCriterion("Zhundian is null");
            return (Criteria) this;
        }

        public Criteria andZhundianIsNotNull() {
            addCriterion("Zhundian is not null");
            return (Criteria) this;
        }

        public Criteria andZhundianEqualTo(Double value) {
            addCriterion("Zhundian =", value, "zhundian");
            return (Criteria) this;
        }

        public Criteria andZhundianNotEqualTo(Double value) {
            addCriterion("Zhundian <>", value, "zhundian");
            return (Criteria) this;
        }

        public Criteria andZhundianGreaterThan(Double value) {
            addCriterion("Zhundian >", value, "zhundian");
            return (Criteria) this;
        }

        public Criteria andZhundianGreaterThanOrEqualTo(Double value) {
            addCriterion("Zhundian >=", value, "zhundian");
            return (Criteria) this;
        }

        public Criteria andZhundianLessThan(Double value) {
            addCriterion("Zhundian <", value, "zhundian");
            return (Criteria) this;
        }

        public Criteria andZhundianLessThanOrEqualTo(Double value) {
            addCriterion("Zhundian <=", value, "zhundian");
            return (Criteria) this;
        }

        public Criteria andZhundianIn(List<Double> values) {
            addCriterion("Zhundian in", values, "zhundian");
            return (Criteria) this;
        }

        public Criteria andZhundianNotIn(List<Double> values) {
            addCriterion("Zhundian not in", values, "zhundian");
            return (Criteria) this;
        }

        public Criteria andZhundianBetween(Double value1, Double value2) {
            addCriterion("Zhundian between", value1, value2, "zhundian");
            return (Criteria) this;
        }

        public Criteria andZhundianNotBetween(Double value1, Double value2) {
            addCriterion("Zhundian not between", value1, value2, "zhundian");
            return (Criteria) this;
        }

        public Criteria andDiscountIsNull() {
            addCriterion("Discount is null");
            return (Criteria) this;
        }

        public Criteria andDiscountIsNotNull() {
            addCriterion("Discount is not null");
            return (Criteria) this;
        }

        public Criteria andDiscountEqualTo(Double value) {
            addCriterion("Discount =", value, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountNotEqualTo(Double value) {
            addCriterion("Discount <>", value, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountGreaterThan(Double value) {
            addCriterion("Discount >", value, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountGreaterThanOrEqualTo(Double value) {
            addCriterion("Discount >=", value, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountLessThan(Double value) {
            addCriterion("Discount <", value, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountLessThanOrEqualTo(Double value) {
            addCriterion("Discount <=", value, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountIn(List<Double> values) {
            addCriterion("Discount in", values, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountNotIn(List<Double> values) {
            addCriterion("Discount not in", values, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountBetween(Double value1, Double value2) {
            addCriterion("Discount between", value1, value2, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountNotBetween(Double value1, Double value2) {
            addCriterion("Discount not between", value1, value2, "discount");
            return (Criteria) this;
        }

        public Criteria andPriceIsNull() {
            addCriterion("Price is null");
            return (Criteria) this;
        }

        public Criteria andPriceIsNotNull() {
            addCriterion("Price is not null");
            return (Criteria) this;
        }

        public Criteria andPriceEqualTo(String value) {
            addCriterion("Price =", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotEqualTo(String value) {
            addCriterion("Price <>", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThan(String value) {
            addCriterion("Price >", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThanOrEqualTo(String value) {
            addCriterion("Price >=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThan(String value) {
            addCriterion("Price <", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThanOrEqualTo(String value) {
            addCriterion("Price <=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLike(String value) {
            addCriterion("Price like", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotLike(String value) {
            addCriterion("Price not like", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceIn(List<String> values) {
            addCriterion("Price in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotIn(List<String> values) {
            addCriterion("Price not in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceBetween(String value1, String value2) {
            addCriterion("Price between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotBetween(String value1, String value2) {
            addCriterion("Price not between", value1, value2, "price");
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