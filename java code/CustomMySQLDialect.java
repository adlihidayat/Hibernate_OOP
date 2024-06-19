package com.example;

import org.hibernate.dialect.MySQLDialect;

public class CustomMySQLDialect extends MySQLDialect {
    @Override
    public String getTableTypeString() {
        return " ENGINE=InnoDB";
    }
}
