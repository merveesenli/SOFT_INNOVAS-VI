List<Account> accList = [select id, name from account];
AccountQueueableExample aq = new AccountQueueableExample(accList);
id jobId = system.enqueueJob(aq);
System.debug(jobId);