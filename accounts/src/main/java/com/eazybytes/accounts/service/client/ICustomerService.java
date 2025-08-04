package com.eazybytes.accounts.service.client;

import com.eazybytes.accounts.dto.CustomerDetailsDto;
import jakarta.validation.constraints.Pattern;
import org.springframework.http.ResponseEntity;

public interface ICustomerService {


    CustomerDetailsDto fetchCustomerDetails(@Pattern(regexp = "(^$|[0-9]{10})", message = "Mobile number must be 10 digits") String mobileNumber);
}
