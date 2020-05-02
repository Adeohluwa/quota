import karax/[karax,vdom, kdom, karaxdsl]
import sugar


# create Navbar
proc navBar(): VNode =
  result = buildHtml(nav):
    a(href="xyz", class="logo")
    tdiv(class="right"):
      a(href="https://facebook.com", class="btn primary"):
        text "Install"


# FAQ
proc faqSection(): VNode =
  result = buildHtml(section(id="faq", class= "faq")):
    h2:
      text "Frequently Asked Questions"
    tdiv(class="accordion"):
      tdiv(class="row"):       
        tdiv(class="question", onclick = () => alert "hiya!" ):
          text "What is DashOne?"
       
        tdiv(class="answer"):
          text "Hiya!"
 
      tdiv(class="row"):       
        tdiv(class="question"):
          text "Who Should Use DashOne?"
 
      tdiv(class="row"):       
        tdiv(class="question"):
          text "Why Should I Trust DashOne With My Data?"

      tdiv(class="row"):       
        tdiv(class="question"):
          text "What Apps Do You Integrate With?"



# Footer
proc footerBar(): VNode =
  result = buildHtml(footer):
    tdiv(class="logo"):
      span(class="d"):
        text "Q"
      span(class="a"):
        text "U"
      span(class="s"):
        text "O"
      span(class="h"):
        text "T"
      span(class="o"):
        text "A"


    tdiv(class="column"):
      tdiv(class="title"):
        ul:
          li:
            a(href="product"):
              text "Product"
          li:
            a(href="product"):
              text "Get Started"
          li:
            a(href="product"):
              text "Report Bugs"
    
    tdiv(class="column"):      
      tdiv(class="title"):
        ul:
          li:
            a(href="product"):
              text "Company"
          li:
            a(href="product"):
              text "Contact Us"
          li:
            a(href="product"):
              text "Blog"
          li:
            a(href="product"):
              text "Privacy"
          li:
            a(href="product"):
              text "Terms Of Service"
       
    tdiv(class="column"):
      tdiv(class="column"):
        tdiv(class="title"):
          ul:
            li:
              a(href="product"):
                text "Social"
            li:
              a(href="product"):
                text "Twitter"
            li:
              a(href="product"):
                text "IndieHackers"

    tdiv(class="copyright"):
      text "2019 DashOne"




proc createDom(): VNode =
  result = buildHtml(tdiv):
    navBar()
    faqSection()
    footerBar()

setRenderer createDom
