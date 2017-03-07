package ua.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import ua.entity.User;

public interface UserRepository extends JpaRepository<User, Integer>, JpaSpecificationExecutor<User>{
	@Query("SELECT DISTINCT c FROM User c LEFT JOIN FETCH c.items i LEFT JOIN FETCH i.category LEFT JOIN FETCH i.producer LEFT JOIN FETCH i.color LEFT JOIN FETCH i.season LEFT JOIN FETCH i.model" )
	List<User> findAll();
	@Query("SELECT DISTINCT c FROM User c LEFT JOIN FETCH c.items i LEFT JOIN FETCH i.category LEFT JOIN FETCH i.producer LEFT JOIN FETCH i.color LEFT JOIN FETCH i.season LEFT JOIN FETCH i.model WHERE c.username=:username" )
	User findByUsername(String username);
	@Query("SELECT DISTINCT c FROM User c LEFT JOIN FETCH c.items i LEFT JOIN FETCH i.category LEFT JOIN FETCH i.producer LEFT JOIN FETCH i.color LEFT JOIN FETCH i.season LEFT JOIN FETCH i.model WHERE c.id=:id" )
	User findOne(@Param("id")int id);
}
