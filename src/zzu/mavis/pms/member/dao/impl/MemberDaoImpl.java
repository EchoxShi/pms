package zzu.mavis.pms.member.dao.impl;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import zzu.mavis.pms.customer.domain.Customer;
import zzu.mavis.pms.member.dao.MemberDao;
import zzu.mavis.pms.member.domain.Member;

import java.util.List;

public class MemberDaoImpl  extends HibernateDaoSupport implements MemberDao {
    @Override
    public void add(Member member) {
        this.getHibernateTemplate().saveOrUpdate(member);
    }
    //根据customer（对象） 查询 member 对象
    public Member findByCst(Customer customer){
        List<Member> member = (List<Member>) this.getHibernateTemplate().findByCriteria(DetachedCriteria.forClass(Member.class).add(Restrictions.eq("customer.ctmId", customer.getCtmId())));
        if(member.size()>0){
            return member.get(0);
        }
        return null;
    }
}
