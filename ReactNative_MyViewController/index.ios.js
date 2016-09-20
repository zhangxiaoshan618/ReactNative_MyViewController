/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  NativeModules,
  findNodeHandle,
  NativeAppEventEmitter
} from 'react-native';

import MyView from  './MyView';
const MyViewManager = NativeModules.MyViewManager;


class ReactNative_MyViewController extends Component {
  render() {
    return (
      <View style={styles.container}>
        <MyView 
        ref="theMyView"
        style={styles.private}
        value={10}
        isTest1={true}
        num={9}
        infoDict={{'num1': 3, 'num2': 5}}>
        </MyView>
      </View>
    );
  }

  componentDidMount() {

        MyViewManager.test4(findNodeHandle(this.refs.theMyView)).then((r)=>{
            console.log('————————————————' + r);
        },(e)=>{
            console.log('————————————————————e');
        });
    }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  private: {
        width: 200,
        height: 200,
        backgroundColor: 'white'
    }
});

AppRegistry.registerComponent('ReactNative_MyViewController', () => ReactNative_MyViewController);
