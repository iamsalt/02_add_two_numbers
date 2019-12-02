# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    head = ListNode.new(0)
    cur = head
    carry = 0
    while(l1||l2)
        sum = get_val(l1) + get_val(l2) + carry
        carry = sum / 10  
        cur.next = ListNode.new(sum % 10)
        cur = cur.next
        l1 = l1.next if l1
        l2 = l2.next if l2
    end
    cur.next = ListNode.new(carry) unless carry.zero?
    head.next
    # ret = to_reverse_array(l1).join('').to_i + to_reverse_array(l2).join('').to_i
    # ret.to_s.chars.reverse.map(&:to_i)
end

def get_val(l)
    l ? l.val : 0
end
