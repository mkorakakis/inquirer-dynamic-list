inquirer-dynamic-list
=====================

[![npm version](https://badge.fury.io/js/inquirer-dynamic-list.svg)](http://badge.fury.io/js/inquirer-dynamic-list)
[![dependencies](https://david-dm.org/mkorakakis/inquirer-dynamic-list.png)](https://david-dm.org/mkorakakis/inquirer-dynamic-list.png)
[![Build Status](https://travis-ci.org/mkorakakis/inquirer-dynamic-list.svg?branch=master)](https://travis-ci.org/mkorakakis/inquirer-dynamic-list)
[![Build status](https://ci.appveyor.com/api/projects/status/uk0kyah3bv676ign?svg=true)](https://ci.appveyor.com/project/mkorakakis/inquirer-dynamic-list)

A subclass of inquirer's list whose choices can be updated on the fly.

Notice this is a proof of concept and breaks inquirer's encapsulation.

Installation
------------

Install `inquirer-dynamic-list` by running:

```sh
$ npm install --save inquirer-dynamic-list
```

Documentation
-------------


* [dynamiclist](#module_dynamiclist)
  * [~DynamicList](#module_dynamiclist..DynamicList)
    * [new DynamicList([options])](#new_module_dynamiclist..DynamicList_new)
    * [.render()](#module_dynamiclist..DynamicList+render)
    * [.addChoice(choice)](#module_dynamiclist..DynamicList+addChoice)
    * [.removeChoice(choice)](#module_dynamiclist..DynamicList+removeChoice)
    * [.run()](#module_dynamiclist..DynamicList+run) ⇒ <code>Promise</code>

<a name="module_dynamiclist..DynamicList"></a>
### dynamiclist~DynamicList
**Kind**: inner class of <code>[dynamiclist](#module_dynamiclist)</code>  
**Summary**: Dynamic list widget  
**Access:** public  

* [~DynamicList](#module_dynamiclist..DynamicList)
  * [new DynamicList([options])](#new_module_dynamiclist..DynamicList_new)
  * [.render()](#module_dynamiclist..DynamicList+render)
  * [.addChoice(choice)](#module_dynamiclist..DynamicList+addChoice)
  * [.removeChoice(choice)](#module_dynamiclist..DynamicList+removeChoice)
  * [.run()](#module_dynamiclist..DynamicList+run) ⇒ <code>Promise</code>

<a name="new_module_dynamiclist..DynamicList_new"></a>
#### new DynamicList([options])

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| [options] | <code>Object</code> |  | options |
| options.choices | <code>Array.&lt;Object&gt;</code> |  | initial choices |
| options.message | <code>String</code> |  | widget message |
| [options.emptyMessage] | <code>String</code> | <code>&#x27;No options&#x27;</code> | message for when no choices |

**Example**  
```js
list = new DynamicList
	message: 'Foo'
	emptyMessage: 'Nothing to show'
	choices: [
		name: 'Foo'
		value: 'foo'
	]

# Run the list widget
list.run().then (answer) ->
	console.log(answer)

# You can add new choices on the fly
list.addChoice
	name: 'Bar'
	value: 'bar'

# We re-render to be able to see the new options
list.render()
```
<a name="module_dynamiclist..DynamicList+render"></a>
#### dynamicList.render()
**Kind**: instance method of <code>[DynamicList](#module_dynamiclist..DynamicList)</code>  
**Summary**: Render the list  
**Access:** public  
**Example**  
```js
list = new DynamicList
	message: 'Foo'
	emptyMessage: 'Nothing to show'
	choices: [
		name: 'Foo'
		value: 'foo'
	]

list.render()
```
<a name="module_dynamiclist..DynamicList+addChoice"></a>
#### dynamicList.addChoice(choice)
**Kind**: instance method of <code>[DynamicList](#module_dynamiclist..DynamicList)</code>  
**Summary**: Add a choice  
**Access:** public  

| Param | Type | Description |
| --- | --- | --- |
| choice | <code>Object</code> | choice |

**Example**  
```js
list = new DynamicList
	message: 'Foo'
	emptyMessage: 'Nothing to show'
	choices: [
		name: 'Foo'
		value: 'foo'
	]

list.addChoice(name: 'Bar', value: 'bar')
list.render()
```
<a name="module_dynamiclist..DynamicList+removeChoice"></a>
#### dynamicList.removeChoice(choice)
**Kind**: instance method of <code>[DynamicList](#module_dynamiclist..DynamicList)</code>  
**Summary**: Remove a choice  
**Access:** public  

| Param | Type | Description |
| --- | --- | --- |
| choice | <code>Object</code> | choice |

**Example**  
```js
list = new DynamicList
	message: 'Foo'
	emptyMessage: 'Nothing to show'
	choices: [
		name: 'Foo'
		value: 'foo'
	]

list.removeChoice(name: 'Foo', value: 'foo')
list.render()
```
<a name="module_dynamiclist..DynamicList+run"></a>
#### dynamicList.run() ⇒ <code>Promise</code>
**Kind**: instance method of <code>[DynamicList](#module_dynamiclist..DynamicList)</code>  
**Summary**: Run the widget  
**Access:** public  
**Fulfil**: <code>String</code> answer  
**Example**  
```js
list = new DynamicList
	message: 'Foo'
	emptyMessage: 'Nothing to show'
	choices: [
		name: 'Foo'
		value: 'foo'
	]

list.run().then (answer) ->
	console.log(answer)
```

Support
-------

If you're having any problem, please [raise an issue](https://github.com/mkorakakis/inquirer-dynamic-list/issues/new) on GitHub and I'll be happy to help.

Tests
-----

Run the test suite by doing:

```sh
$ gulp test
```

Contribute
----------

- Issue Tracker: [github.com/mkorakakis/inquirer-dynamic-list/issues](https://github.com/mkorakakis/inquirer-dynamic-list/issues)
- Source Code: [github.com/mkorakakis/inquirer-dynamic-list](https://github.com/mkorakakis/inquirer-dynamic-list)

Before submitting a PR, try to include tests, and make sure that [coffeelint](http://www.coffeelint.org/) runs without any warning:

```sh
$ gulp lint
```

License
-------

The project is licensed under the MIT license.
