class Validator:
    def is_customer(self, customer_record: list) -> bool:
        """
        PURPOSE: Confirm there is only one customer in the customer_record\n
        ARGUMENT: customer_record: the attributes of all customers that share the provided email\n
        RETURN: True: There is one and only one customer record, False: there are zero or more than one customer records\n
        """
        if len(customer_record) == 0: return self.customer_not_found_error()
        elif len(customer_record) == 1: return True
        else: return self.duplicate_emails_found_error()

    def customer_not_found_error(self) -> bool:
        """
        PURPOSE: print the error that the customer does not exist\n
        ARGUMENT: None\n
        RETURN: False: do not allow the user to login\n
        """
        print("ERROR: Customer does not exist")
        return False

    def duplicate_emails_found_error(self) -> bool:
        """
        PURPOSE: print the error that more than one customer share the same email\n
        ARGUMENT: None\n
        RETURN: False: do not allow the user to login\n
        """
        print("ERROR: Email belongs to more than one user. Contact admin")
        return False
    
    def is_member(self, customer_record: list) -> bool:
        """
        PURPOSE: Check if the customer is a member\n
        ARGUMENT: customer_record: the attributes of the customer\n
        RETURN: True: The customer is a member, False: The customer is not a member\n
        """
        if customer_record[0][5]: return True
        else: return False