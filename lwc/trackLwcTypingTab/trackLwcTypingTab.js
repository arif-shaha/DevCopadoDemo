import { LightningElement,track,wire} from 'lwc';
import getallaccounts from '@salesforce/apex/passingParameterNov6.getlistacc';

export default class TrackLwcTypingTab extends LightningElement 
{
    searchKey = '';
    @track listAccount;
    @track error;

    columns = [
        {label: 'Account Id', fieldName:'Id'},
        {label: 'Account Name', fieldName:'Name'},
        {label: 'Account Phone', fieldName:'Phone'}
    ]
    onChangeHandler(event)
      {
          this.searchKey = event.target.value;
          console.log(this.searchKey);            
      } 
      @wire(getallaccounts,{searchKey:'$searchKey'})
      getdata({error,data})
      {
        if(data)
        {
            this.listAccount= data;
        }
        else if(error)
        {
            this.error = error;
        }

      }
}