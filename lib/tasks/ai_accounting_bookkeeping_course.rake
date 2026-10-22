require_relative "../ai_accounting_bookkeeping_content"

namespace :content do
  desc "Create AI for Accounting and Bookkeeping course and populate all 15 lessons"
  task ai_accounting_bookkeeping: :environment do
    course = Course.find_or_create_by!(slug: "ai-accounting-bookkeeping") do |c|
      c.title       = "AI for Accounting and Bookkeeping"
      c.description = "Use AI to save time on bookkeeping and accounts. Read invoices and receipts, categorise transactions, reconcile bank statements, prepare GST data, make monthly reports and keep good controls. Education only, not tax advice."
      c.color       = "#14b8a6"
      c.icon        = "🧾"
      c.position    = 41
      c.published   = true
    end
    course.update!(description: "Use AI to save time on bookkeeping and accounts. Read invoices and receipts, categorise transactions, reconcile bank statements, prepare GST data, make monthly reports and keep good controls. Education only, not tax advice.")
    puts "Course: #{course.title}"

    titles = {
      1 => "Accounting Basics",
      2 => "Where AI Helps in Accounting",
      3 => "Double-Entry and the Chart of Accounts",
      4 => "Data Safety for Accounts Work",
      5 => "Reading Invoices and Receipts with AI",
      6 => "Categorising Transactions",
      7 => "Bank Reconciliation",
      8 => "Accounts Receivable and Payable",
      9 => "Expense Claims and Petty Cash",
      10 => "GST Basics for Small Businesses",
      11 => "Month-End Close",
      12 => "Financial Statements Explained",
      13 => "Monthly Reports for Owners",
      14 => "Controls and Error Checks",
      15 => "Capstone: Close a Month for a Small Shop"
    }

    descriptions = {
      1 => "Learn what bookkeeping and accounting are, how they differ, and why every business keeps books.",
      2 => "See where AI saves time in accounts work, what it gets wrong, and what an accountant must still check and decide.",
      3 => "Understand debits and credits, the five account types and a simple chart of accounts, with entries that always balance.",
      4 => "Keep client and company data safe: know what is sensitive, make safe sample data and follow your company's AI policy.",
      5 => "Use AI to pull vendor, date, tax and totals from bills into a table, then check every row with spreadsheet formulas.",
      6 => "Map bank lines to your chart of accounts with rules and AI, handle unclear items and check the totals.",
      7 => "Reconcile the bank with your books, sort timing differences, missing entries and errors, and recalculate AI's sums.",
      8 => "Build an ageing report, plan supplier payments and use AI to write polite payment reminders.",
      9 => "Check expense claims against a policy, spot duplicate bills and count petty cash against the float.",
      10 => "Learn GSTIN, tax invoices, input tax credit and the main GST returns, and match purchases with GSTR-2B. Education only, not tax advice.",
      11 => "Follow a month-end close checklist, record accruals, build a trial balance and use AI to find errors.",
      12 => "Read the profit and loss, balance sheet and cash flow statements, and check that they tie together.",
      13 => "Build a one-page owner report that compares two months, with AI writing the words from confirmed facts.",
      14 => "Learn approvals, separation of duties and audit trails, and use AI and spreadsheets to spot unusual entries.",
      15 => "Close a month for a small shop: categorise, reconcile the bank, summarise GST and write an owner report."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Which of these is a bookkeeping task?", opts: ["A) Advising the owner on how to plan taxes", "B) Recording each day's sales and payments in the cash book", "C) Deciding whether the business should take a bank loan"], ans: "B" },
      2 => { type: "multiple_choice", q: "Which job should you give to a spreadsheet instead of an AI chat?", opts: ["A) Drafting a polite payment reminder", "B) Suggesting a category for each bank line", "C) Adding up totals and checking that they match"], ans: "C" },
      3 => { type: "multiple_choice", q: "Sweet Crumbs pays shop rent of ₹12,000 from its bank account. What is the journal entry?", opts: ["A) Debit Rent ₹12,000, Credit Bank ₹12,000", "B) Debit Bank ₹12,000, Credit Rent ₹12,000", "C) Debit Rent ₹12,000, Credit Owner's capital ₹12,000"], ans: "A" },
      4 => { type: "true_false", q: "It is fine to paste a client's PAN and bank account number into a free AI chat if you delete the chat afterwards.", opts: ["True", "False"], ans: "False" },
      5 => { type: "multiple_choice", q: "AI reads a bill as Taxable ₹2,330, GST ₹428.40 and Total ₹2,808.40. What should you do?", opts: ["A) Change the total to ₹2,758.40 so the row adds up", "B) Accept it, because the AI said all fields were clear", "C) Open the original bill and check each number"], ans: "C" },
      6 => { type: "multiple_choice", q: "A bank line says \"ATM WDL MAIN RD, ₹5,000\" and nobody knows what the cash was for. What should you do?", opts: ["A) Record it as a shop expense", "B) Put it in Suspense and ask the owner", "C) Let the AI choose the most likely account"], ans: "B" },
      7 => { type: "multiple_choice", q: "You gave a supplier a cheque, but it is not on the bank statement yet. What is this in a bank reconciliation?", opts: ["A) A timing difference, so no entry is needed in the books", "B) A missing entry that you must post in the books", "C) A bank error that you must report"], ans: "A" },
      8 => { type: "true_false", q: "Before you send a payment reminder, you should check the bank and UPI records to make sure the customer has not already paid.", opts: ["True", "False"], ans: "True" },
      9 => { type: "multiple_choice", q: "The petty cash float is ₹10,000 and the vouchers total ₹6,735. How much cash should be in the box?", opts: ["A) ₹6,735", "B) ₹3,735", "C) ₹3,265"], ans: "C" },
      10 => { type: "multiple_choice", q: "Your purchase register shows an invoice, but it is not in your GSTR-2B. What is a sensible first step?", opts: ["A) Ask the supplier to report the invoice, and tell your CA", "B) Delete the invoice from your books", "C) Ask AI how much credit you can claim and file it"], ans: "A" },
      11 => { type: "multiple_choice", q: "Your draft trial balance shows debits of ₹9,77,000 and credits of ₹9,68,000. What is a likely cause?", opts: ["A) A missing electricity accrual", "B) Two digits swapped in one amount, because the ₹9,000 difference divides exactly by 9", "C) The owner's drawings were too high"], ans: "B" },
      12 => { type: "true_false", q: "If a business makes a net profit of ₹84,000 in a month, its bank and cash must also go up by ₹84,000.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "An AI draft of your owner report says \"Sales rose because of festival demand\", but nobody gave it that reason. What should you do?", opts: ["A) Keep it, because it sounds likely", "B) Delete the whole report", "C) Check with the owner and use only confirmed reasons, or write [needs check]"], ans: "C" },
      14 => { type: "multiple_choice", q: "The rule is that payments above ₹50,000 need a second approver. Which entry needs a closer look?", opts: ["A) Two payments of ₹49,800 to a new vendor, entered and approved by the same person", "B) Monthly rent of the usual amount, approved by the finance manager", "C) A salary payment that matches the approved payroll sheet"], ans: "A" },
      15 => { type: "multiple_choice", q: "Rangrez Crafts paid ₹6,500 in August for its July GST. How should you record this payment?", opts: ["A) As an August expense in the profit and loss", "B) As a reduction of GST payable, not as an expense", "C) As extra sales income"], ans: "B" }
    }

    AiAccountingBookkeepingContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]; l.description = descriptions[position]
      end
      lesson.update!(title: titles[position], description: descriptions[position],
                     body: data[:body], starter_code: data[:starter_code].presence)

      e = exercises[position]
      Exercise.find_or_initialize_by(course_lesson: lesson).tap do |x|
        x.exercise_type = e[:type]; x.question = e[:q]
        x.options = e[:opts]; x.correct_answer = e[:ans]
      end.save!
      puts "  ✓ #{position}. #{titles[position]}"
    end

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end
