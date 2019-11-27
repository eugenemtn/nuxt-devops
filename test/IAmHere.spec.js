import { mount } from '@vue/test-utils'
import IAmHere from '@/components/IAmHere.vue'

describe('IAmHere', () => {
  test('is a Vue instance', () => {
    const wrapper = mount(IAmHere)
    const button = wrapper.find('button')
    expect(wrapper.emitted()['i-am-here']).toBeFalsy()
    button.trigger('click')
    expect(wrapper.emitted()['i-am-here']).toBeTruthy()
  })
})
