package test;

import com.study.bean.Customer;
import com.study.dao.BaseDao;
import com.study.dao.CustomerDao;
import com.study.dao.impl.CustomerDaoImpl;
import org.junit.Test;

import javax.naming.Name;
import java.util.List;

/**
 * @Auther: zhaotj
 * @Date: 2021/6/3 0003 - 06 - 03 - 7:52
 * @Description: test.com.study
 * @version: 1.0
 */
public class TestContection extends BaseDao {

    @Test
    public void getCustmor(){
        CustomerDao customerDao = new CustomerDaoImpl();
        String sql = "select id,name,password,zip,telephone,email,address from es_customer where name = ?";
        List<Customer> customers = baseQuery(Customer.class, sql,"qqq");
        customers.forEach(System.out::println);
    }
}
