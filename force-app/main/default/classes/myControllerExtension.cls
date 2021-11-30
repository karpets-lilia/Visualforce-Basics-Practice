public with sharing class myControllerExtension {
    
    public myControllerExtension(ApexPages.StandardController controller) { }

    public PageReference OpenPage() {
        PageReference pr = new PageReference('/apex/ShowDataTableContacts');
		pr.setRedirect(true);
		return pr;
    }
}
