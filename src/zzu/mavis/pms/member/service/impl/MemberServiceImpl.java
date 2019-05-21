package zzu.mavis.pms.member.service.impl;

import zzu.mavis.pms.customer.domain.Customer;
import zzu.mavis.pms.member.dao.MemberDao;
import zzu.mavis.pms.member.domain.Member;
import zzu.mavis.pms.member.service.MemberService;

import java.util.List;

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

    @Override
    public List<Member> findAll1() {
        return memberDao.findAll1();
    }

    @Override
    public List<Member> findAll2() {
        return memberDao.findAll2();
    }
}
