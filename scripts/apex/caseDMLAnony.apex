List<case> listCase = new List<case>();
    for (Integer i = 0; i < 205; i++) {
        case c = new case();
        c.subject = 'This is bug';
        c.description = 'Resolve it';
        c.status = 'New';
        c.Origin = 'Web';
        listCase.add(c);
    }
    insert listCase;

list<case> updateCase = [select id, status from case where status='New'];
    for (case eachCAse : updateCAse) {
    eachCase.Status = 'Working';
    }
    update updateCase;