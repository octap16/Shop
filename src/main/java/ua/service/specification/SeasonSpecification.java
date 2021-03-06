package ua.service.specification;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.data.jpa.domain.Specification;

import ua.dto.filter.BasicFilter;
import ua.entity.Season;


public class SeasonSpecification implements Specification<Season>{
	
	private final BasicFilter filter;
	
	public SeasonSpecification(BasicFilter filter) {
		this.filter = filter;
	}
	
		@Override
	public Predicate toPredicate(Root<Season> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
		if(filter.getSearch().isEmpty()) return null;
		return cb.like(root.get("name"), filter.getSearch()+"%");
	}

	
}