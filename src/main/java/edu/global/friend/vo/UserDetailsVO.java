package edu.global.friend.vo;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data
public class UserDetailsVO implements UserDetails {


    private int custno;
    private String custid;
    private String custpw;
    private String custemail;
    private String custname;
    private Date custbirth;
    private String custloc;
    private String custrank;
    private Date custduration;
    private List<AuthVO> authList;

    public UserDetailsVO(UserVO vo) {
        this.custno = vo.getCustno();
        this.custid = vo.getCustid();
        this.custpw = vo.getCustpw();
        this.custemail = vo.getCustemail();
        this.custname = vo.getCustname();
        this.custbirth = vo.getCustbirth();
        this.custloc = vo.getCustloc();
        this.custrank = vo.getCustrank();
        this.custduration = vo.getCustduration();
        this.authList = vo.getAuthList();
    }


    public int getCustno() {
        return custno;
    }

    public void setCustno(int custno) {
        this.custno = custno;
    }

    public String getCustid() {
        return custid;
    }

    public void setCustid(String custid) {
        this.custid = custid;
    }

    public String getCustpw() {
        return custpw;
    }

    public void setCustpw(String custpw) {
        this.custpw = custpw;
    }

    public String getCustemail() {
        return custemail;
    }

    public void setCustemail(String custemail) {
        this.custemail = custemail;
    }

    public String getCustname() {
        return custname;
    }

    public void setCustname(String custname) {
        this.custname = custname;
    }

    public Date getCustbirth() {
        return custbirth;
    }

    public void setCustbirth(Date custbirth) {
        this.custbirth = custbirth;
    }

    public String getCustloc() {
        return custloc;
    }

    public void setCustloc(String custloc) {
        this.custloc = custloc;
    }

    public String getCustrank() {
        return custrank;
    }

    public void setCustrank(String custrank) {
        this.custrank = custrank;
    }

    public Date getCustduration() {
        return custduration;
    }

    public void setCustduration(Date custduration) {
        this.custduration = custduration;
    }

    public List<AuthVO> getAuthList() {
        return authList;
    }

    public void setAuthList(List<AuthVO> authList) {
        this.authList = authList;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<SimpleGrantedAuthority> authorities = new ArrayList<>();
        for (AuthVO auth : authList) {
            authorities.add(new SimpleGrantedAuthority(auth.getAuth()));
        }
        return authorities;
    }


	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return custpw;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return custid;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}

}
