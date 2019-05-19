package zzu.mavis.pms.member.service.impl;

import zzu.mavis.pms.customer.domain.Customer;
import zzu.mavis.pms.member.dao.MemberDao;
import zzu.mavis.pms.member.domain.Member;
import zzu.mavis.pms.member.service.MemberService;

public class MemberServiceImpl implements MemberService {
    private MemberDao memberDao;

    public void setMemberDao(MemberDao memberDao) {
        this.memberDao = memberDao;
    }

    @Override
    public void add(Member member) {
        memberDao.add(member);
    }

    @Override
    public Member findByCst(Customer customer) {
        return memberDao.findByCst(customer);
    }
}
