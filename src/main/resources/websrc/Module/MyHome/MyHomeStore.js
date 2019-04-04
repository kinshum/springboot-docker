import { observable, action } from "mobx";
import {notification} from 'antd';

export default class MyHomeStore {
    @observable loading;

    constructor() {
        this.loading = false;
    }
}