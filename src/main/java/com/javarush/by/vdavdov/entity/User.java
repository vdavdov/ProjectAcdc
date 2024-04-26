package com.javarush.by.vdavdov.entity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.Objects;

@Data
public class User {
    private Long id;
    private String name;
    private int score;
    private final String ipAddress;

    public User(String name, String ipAddress) {
        this.name = name;
        this.ipAddress = ipAddress;
    }

    public void nextLevel() {
        setScore(score + 1);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return Objects.equals(id, user.id) && Objects.equals(name, user.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name);
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", score=" + score +
                ", ipAddress='" + ipAddress + '\'' +
                '}';
    }
}
