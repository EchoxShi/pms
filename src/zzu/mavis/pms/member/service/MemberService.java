package zzu.mavis.pms.member.service;

import zzu.mavis.pms.customer.domain.Customer;
import zzu.mavis.pms.member.domain.Member;

public interface MemberService  {
    public void add(Member member);
    public Member findByCst(Customer customer);

}
