import React, { Component } from 'react';
import { View,requireNativeComponent } from 'react-native';

export default class MyView extends React.Component {
    // 与OC中 RCTViewManager子类中导出的属性对应

    static propTypes = {
        value:                      React.PropTypes.number,
        isTest1:                    React.PropTypes.bool,
        num:                        React.PropTypes.number,
        infoDict:                   React.PropTypes.object,
    };

    componentDidMount() {

        console.log("MyView被加载了");
    }

    render() {
        return(
        <RCTMyView
            {...this.props}
            >
            </RCTMyView>
        );
    }
}
/**
    //这个文件中,凡是用到RCTMyView的地方,应该与OC中
    //RCTViewManager子类中RCT_EXPORT_MODULE()括号中的参数一致,
    //如果没有参数,应为RCTViewManager子类的类名去掉manager
*/
var RCTMyView = requireNativeComponent('RCTMyView', MyView);
