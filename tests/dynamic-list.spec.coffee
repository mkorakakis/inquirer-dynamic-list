m = require('mochainon')
DynamicList = require('../lib/dynamic-list')

describe 'Dynamic List:', ->

	describe 'given a list without choices', ->

		beforeEach ->
			@list = new DynamicList
				message: 'Select an option'
				choices: []

		afterEach ->
			@list.ui.close()

		it 'should set a default emptyMessage', ->
			m.chai.expect(@list.options.emptyMessage).to.equal('No options')

		describe '#isEmpty()', ->

			it 'should return true', ->
				m.chai.expect(@list.isEmpty()).to.be.true

		describe '#addChoice()', ->

			it 'should be able to add a choice', ->
				@list.addChoice(name: 'Foo', value: 'foo')
				m.chai.expect(@list.opt.choices.length).to.equal(1)
				m.chai.expect(@list.opt.choices.choices.length).to.equal(1)
				m.chai.expect(@list.opt.choices.realChoices.length).to.equal(1)
				m.chai.expect(@list.isEmpty()).to.be.false

	describe 'given a list with a single choice', ->

		beforeEach ->
			@list = new DynamicList
				message: 'Select an option'
				choices: [
					name: 'Foo'
					value: 'foo'
				]

		afterEach ->
			@list.ui.close()

		describe '#isEmpty()', ->

			it 'should return false', ->
				m.chai.expect(@list.isEmpty()).to.be.false

		describe '#removeChoice()', ->

			it 'should be able to remove the choice', ->
				@list.removeChoice(name: 'Foo', value: 'foo')
				m.chai.expect(@list.opt.choices.length).to.equal(0)
				m.chai.expect(@list.opt.choices.choices.length).to.equal(0)
				m.chai.expect(@list.opt.choices.realChoices.length).to.equal(0)
				m.chai.expect(@list.isEmpty()).to.be.true

	describe 'given a list with an empty message', ->

		beforeEach ->
			@list = new DynamicList
				message: 'Select an option'
				emptyMessage: 'Nothing here'
				choices: []

		afterEach ->
			@list.ui.close()

		it 'should save the default emptyMessage', ->
			m.chai.expect(@list.options.emptyMessage).to.equal('Nothing here')
