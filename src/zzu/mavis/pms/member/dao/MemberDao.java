package zzu.mavis.pms.member.dao;

import zzu.mavis.pms.customer.domain.Customer;
import zzu.mavis.pms.member.domain.Member;

public interface MemberDao {
    public void add(Member member);
    public Member findByCst(Customer customer);

}
