
        list<account> listAccount = new list<Account>();

        account acc1 = new account();
        acc1.name = 'bulk acc 1';
        listAccount.add(acc1);

        account acc2 = new account();
        acc2.name = 'bulk acc 2';
        listAccount.add(acc2);

        account acc3 = new account();
        acc3.name = 'bulk acc 3';
        listAccount.add(acc3);

        insert listAccount;
    