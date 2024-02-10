import { LightningElement } from 'lwc';

export default class ConditionalRendered extends LightningElement {
    areDetailsVisible = false;

  handleChange(event) {
    this.areDetailsVisible = event.target.checked;
  }
}