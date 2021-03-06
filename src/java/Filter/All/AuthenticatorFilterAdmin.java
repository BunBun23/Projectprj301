/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Filter.All;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author phant
 */
@WebFilter(filterName = "AuthenticatorFilterAdmin", urlPatterns = {"/ControllerDeleteCustomer","/ControllerListCustomer","/ControllerAddDoctor","/ControllerDeleteDoctor","/ControllerEditDoctor"
,"/ControllerListDoctor","/ControllerAddVaccine","/ControllerAddVaccinePackage","/AddVaccineToPackageController","/ControllerDeleteVaccine","/DeleteVaccineInPackageController","/ControllerDeleteVaccinePackage"
,"/ControllerEditVaccine","/ControllerEditVaccinePackage","/ControllerHomeAdmin","/ControllerListVaccine","/ControllerListVaccinePackage","/ControllerPackageDetail"})
public class AuthenticatorFilterAdmin implements Filter {

    private static final boolean debug = true;

    // The filter configuration object we are associated with.  If
    // this value is null, this filter instance is not currently
    // configured. 
    private FilterConfig filterConfig = null;

    public AuthenticatorFilterAdmin() {
        
    }

    /**
     *
     * @param request The servlet request we are processing
     * @param response The servlet response we are creating
     * @param chain The filter chain we are processing
     *
     * @exception IOException if an input/output error occurs
     * @exception ServletException if a servlet error occurs
     */
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;

        HttpSession session = req.getSession();
        Account account = (Account) session.getAttribute("acc");
        if (account != null) {
            if (account.getRole().equals("admin")) {
                chain.doFilter(request, response);
            } else {
                resp.sendRedirect("login");
            }
        } else {
            resp.sendRedirect("login");
        }
    }

    /**
     * Destroy method for this filter
     */
    @Override
    public void destroy() {
    }

    /**
     * Init method for this filter
     */
    @Override
    public void init(FilterConfig filterConfig) {
        
    }
}
