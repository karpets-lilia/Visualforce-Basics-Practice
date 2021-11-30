public with sharing class ContactController {
    private final Contact contact;

    public ContactController() {
        contact = [
            SELECT Id, Name, Email, Phone
            FROM Contact 
            WHERE Id = :ApexPages.currentPage().getParameters().get('id')
        ];
    }

    public Contact getContact() {
        return contact;
    }

    public ContactController(ApexPages.StandardController controller) { }

    public PageReference OpenPage() {
        PageReference pr = new PageReference('/apex/ContactDataTableCustom');
		pr.setRedirect(true);
		return pr;
    }
}
