package com.translator.Translator.repository;

import com.translator.Translator.entity.Person;
import org.springframework.data.repository.CrudRepository;

public interface PersonImpl extends CrudRepository<Person,Long> {
    Person getPersonByName(String name);
}
