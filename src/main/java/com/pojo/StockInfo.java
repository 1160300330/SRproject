package com.pojo;

import lombok.Data;

import java.sql.Date;

@Data
public class StockInfo {
    String datetime;
    double closing_price;
    double highese_price;
    double lowest_price;
    double opening_price;
    double previous_close;
    double ups_and_downs;
    double quote_change;
    double turnover_rate;
    double volume;
    double turnover;
    double ttmc;
    double cmc;
    public String getDatetime() {
        return datetime;
    }

    public void setDatetime(String datetime) {
        this.datetime = datetime;
    }

    public double getClosing_price() {
        return closing_price;
    }

    public void setClosing_price(double closing_price) {
        this.closing_price = closing_price;
    }

    public double getHighese_price() {
        return highese_price;
    }

    public void setHighese_price(double highese_price) {
        this.highese_price = highese_price;
    }

    public double getLowest_price() {
        return lowest_price;
    }

    public void setLowest_price(double lowest_price) {
        this.lowest_price = lowest_price;
    }

    public double getOpening_price() {
        return opening_price;
    }

    public void setOpening_price(double opening_price) {
        this.opening_price = opening_price;
    }

    public double getPrevious_close() {
        return previous_close;
    }

    public void setPrevious_close(double previous_close) {
        this.previous_close = previous_close;
    }

    public double getUps_and_downs() {
        return ups_and_downs;
    }

    public void setUps_and_downs(double ups_and_downs) {
        this.ups_and_downs = ups_and_downs;
    }

    public double getQuote_change() {
        return quote_change;
    }

    public void setQuote_change(double quote_change) {
        this.quote_change = quote_change;
    }

    public double getTurnover_rate() {
        return turnover_rate;
    }

    public void setTurnover_rate(double turnover_rate) {
        this.turnover_rate = turnover_rate;
    }

    public double getVolume() {
        return volume;
    }

    public void setVolume(double volume) {
        this.volume = volume;
    }

    public double getTurnover() {
        return turnover;
    }

    public void setTurnover(double turnover) {
        this.turnover = turnover;
    }

    public double getTtmc() {
        return ttmc;
    }

    public void setTtmc(double ttmc) {
        this.ttmc = ttmc;
    }

    public double getCmc() {
        return cmc;
    }

    public void setCmc(double cmc) {
        this.cmc = cmc;
    }


}
