package com.translator.Translator.entity;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Email;
import java.util.Date;

@Entity
@Table(name = "Core_Person",schema = "public")
@Data
public class Person {

    @GeneratedValue(strategy = GenerationType.AUTO , generator = "person")
    @SequenceGenerator(name = "person",sequenceName = "PERSON_SEQ",allocationSize =1 )
    @Id
    private long id;

    @Column
    private String name;
    @Column
    private String family;
    @Column
    private String phone;
    @Email(message = "Wrong Format")
    private String email;
    @Temporal(value = TemporalType.DATE)
    private Date birthDay;

}
