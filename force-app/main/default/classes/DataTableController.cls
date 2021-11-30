public with sharing class DataTableController {
    private  List<Contact> contacts;

    
    public DataTableController() {
        this.contacts = [
            SELECT Id, Name, Email, Phone
            FROM Contact 
        ];
    }


    public List<Contact> getContacts() {
        return contacts;
    }


}

