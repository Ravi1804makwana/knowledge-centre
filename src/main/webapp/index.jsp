<%-- 
    Document   : index
    Created on : 17-Apr-2020, 22:53:25
    Author     : Ravikumar Makwana
--%>
<jsp:include page="dbconnect.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Knowledge Center</title>

        <!-- Favicon -->
        <link rel="icon" href="img/core-img/favicon.ico">

        <!-- Stylesheet -->
        <link rel="stylesheet" href="style.css">

    </head>

    <body>
        <!-- ##### Hero Area Start ##### -->
        <section class="hero-area bg-img bg-overlay-2by5" style="background-image: url(img/bg-img/bg1.jpg);">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <link rel="stylesheet"
                              href="https://fonts.googleapis.com/css?family=Righteous">
                        <style>
                            .ravi {
                                font-family: 'Righteous', serif;
                                font-size: 4000px;
                                text-shadow: 4px 4px 4px teal;
                            }
                        </style>
                        <!-- Hero Content -->
                        <div class="hero-content text-center">
                            <h2 class="ravi">Today a reader, tomorrow a leader.</h2>
                            <a href="#body" class="btn clever-btn">Get Started</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ##### Hero Area End ##### -->
        <!-- ##### Popular Courses Start ##### -->
        <section id="body" class="popular-courses-area section-padding-100-0" style="background-image: url(img/core-img/texture.png);">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-heading">
                            <h3>Key Areas</h3>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <!-- Single Popular Course -->
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="single-popular-course mb-100 wow fadeInUp" data-wow-delay="250ms">
                            <img src="img/v1.jpeg" alt="" height="30">
                            <!-- Course Content -->
                            <div class="course-content">
                                <a href="usefullinks.jsp"><h4>Online Free Materials</h4></a>
                                <p>Very important eBooks for freely downloads</p>
                            </div>
                        </div>
                    </div>

                    <!-- Single Popular Course -->
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="single-popular-course mb-100 wow fadeInUp" data-wow-delay="500ms">
                            <img src="img/v2.png" alt="">
                            <!-- Course Content -->
                            <div class="course-content">
                                <h4>Important Links</h4>
                                <p>Important Links to improve study.</p>
                            </div>

                        </div>
                    </div>

                    <!-- Single Popular Course -->
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="single-popular-course mb-100 wow fadeInUp" data-wow-delay="750ms">
                            <img src="img/v3.jpeg" alt="">
                            <!-- Course Content -->
                            <div class="course-content">
                                <a href="transaction.jsp"><h4>Library Books</h4></a>

                                <p>Freely  Issue return books in Library.</p>
                            </div>

                        </div>
                    </div>
                </div>
        </section>
        <!-- ##### Popular Courses End ##### -->

        <!-- ##### Courses Content Start ##### -->
        <div class="single-course-content section-padding-100">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="course--content">
                            <div class="clever-tabs-content">
                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="tab--1" data-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="false">News</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="tab--2" data-toggle="tab" href="#tab2" role="tab" aria-controls="tab2" aria-selected="true">Knowledge Center</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="tab--3" data-toggle="tab" href="#tab3" role="tab" aria-controls="tab3" aria-selected="true">Events</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="tab--4" data-toggle="tab" href="#tab4" role="tab" aria-controls="tab4" aria-selected="true">Services</a>
                                    </li>
                                </ul>

                                <div class="tab-content" id="myTabContent">
                                    <!-- Tab Text -->
                                    <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab--1">
                                        <div class="clever-description">
                                            <%!
                                                String title, msg;
                                            %>                
                                            <%
                                                Connection con = (Connection) application.getAttribute("con");
                                                Statement stmt = con.createStatement();
                                                ResultSet rs = stmt.executeQuery("Select * from news");
                                                while (rs.next()) {
                                                    title = rs.getString("title");
                                                    msg = rs.getString("msg");
                                            %>
                                            <div class="about-course mb-30">
                                                <h4><%= title%></h4>
                                                <p><%= msg%></p>
                                            </div>
                                            <%}%>
                                        </div>
                                    </div>

                                    <!-- Tab Text -->
                                    <div class="tab-pane fade" id="tab2" role="tabpanel" aria-labelledby="tab--2">
                                        <div class="clever-curriculum">

                                            <!-- About Curriculum -->
                                            <div class="about-curriculum mb-30">
                                                <h4>Knowledge Center</h4>
                                                <p style="text-align: justify;">The college has a well-established fully computerized Library (Knowledge Center) with a large collection of textbooks, reference books, technical and non-technical journals and magazines, educational DVDs and CDs for all the courses offered by various departments. In addition to physical copies of relevant journals. The Library has also facility of DELNET for inter library loan. It has Hard Disk of Video Lectures of 50,000 hours of IIT’s. Library is well equipped with night vision C.C.T.V camera at various places. The Knowledge Center is rich with various renowned resource sharing facilities. The Library has a separate reading area, references section, web access room, audio-visual room, book bank area etc. to facilitate the fullest utilization of the available resources for the students and staff. It also has enriched collection of value-added cultural and spiritual books by the renowned authors to build up the moral and inner strength of the students. In order to facilitate all the readers in selecting the reading materials of their interest, the access to stacks is open to all the users. The reading materials have been classified and catalogued based on Dewey Decimal Classification (DDC). It works as a nerve center of the institution by keeping the knowledge of students and faculty members updated. The Information data bank is constantly updated and the facilities are added periodically to keep in pace with the recent ICT developments in the various area of knowledge.</p>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Tab Text -->
                                    <div class="tab-pane fade" id="tab3" role="tabpanel" aria-labelledby="tab--3">
                                        <div class="clever-review">

                                            <!-- About Review -->
                                            <div class="about-review mb-30">
                                                <%
                                                    rs=stmt.executeQuery("Select * from events");
                                                    while(rs.next())
                                                    {
                                                        out.println("<h4>"+rs.getString("title")+"</h4>");
                                                        out.println("<p style='text-align: justify;'>"+rs.getString("event_desc")+"</p>");
                                                    }
                                                %>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="tab4" role="tabpanel" aria-labelledby="tab--4">
                                        <div class="clever-curriculum">

                                            <!-- About Curriculum -->
                                            <div class="about-curriculum mb-30">
                                                <h4>Library Automation</h4>

                                                <p style="text-align:justify;">Library is fully computerized with using SOUL software . All in house activities like circulation, cataloguing, serial control, OPAC etc. are being done with the use of software. Barcode reader and software helps to make entire house keeping activities very fast and accurate.</p>

                                                <h4>Reference</h4>

                                                <p style="text-align:justify;">There are various books that are the sources of information about different subjects. They include Encyclopedias, Dictionaries, Guides, Data books, Handbooks etc.</p>

                                                <h4>Circulation</h4>

                                                <p style="text-align:justify;">Remote Login, Status Check, OPAC Access,  Reminder to user requests, Inter Library Loan, Direct Borrowing facility etc.</p>

                                                <h4>Book Bank</h4>

                                                <p style="text-align:justify;">Book bank facility is provided to the students of all the braches. A set of book is given to the  students as per syllabus for whole semester as per rule.</p>

                                                <h4>OPAC</h4>

                                                <p style="text-align:justify;">Online Public Access Catalogue is an online database of reading materials available in library. User can search a library catalogue principally to locate books and other reading materials which are physically located at library.</p>

                                                <h4>Inter Library Loan</h4>

                                                <p style="text-align:justify;">Inter Library Loan Facility is provided to the students and facility with the use of DELNET.</p>

                                                <h4>Current Awareness Service</h4>

                                                <p style="text-align:justify;">We have made special notice board for this service. Here we display the good academic, scientific articles from news paper. Also display such non technical value added article. When a new article comes; old cutting is being filed subject wise in reference department for ready reference.</p>

                                                <h4>Web Access</h4>

                                                <p style="text-align:justify;">There are 12 highly configured P.C. with 17″ TFT monitor in which user can get 8 mbps internet speed. User can download and write the data. As our campus is Wi-Fi enabled, user can access the internet from any corner of the campus.</p>

                                                <h4>Library at Your Doors</h4>

                                                <p style="text-align:justify;">We have opened the email id of each department through which we send the books catalogue, new arrival book list, budget details, useful articles to the faculty. Routine correspondence is being done through this facility.</p>

                                                <h4>Question Papers</h4>

                                                <p style="text-align:justify;">Branch wise and semester wise question paper files are available physically  as well on college FTP for the reference purpose of students.</p>

                                                <h4>Overdue SMS</h4>

                                                <p style="text-align:justify;">We do SMS to the students who don’t return the books within time limit or who are irregular or detained .</p>

                                                <h4>Transaction SMS</h4>

                                                <p style="text-align:justify;">We provides special service to the students i.e. Transactions SMS. Here, we provide the information of books on their mobile as and when they issued or returned the books. User can see the remaining balance of books also when he/she issued/returned the books.</p>

                                                <h4>Reading Facilities</h4>

                                                <p style="text-align:justify;">Reading area consists with natural air and light. At a time more than 200 students can read in comfortable reading area.</p>

                                                <h4>Audio-Visual Room</h4>

                                                <p style="text-align:justify;">We have made special A.V. room with latest multi media projector with document camera including facility of laptop, microphone, speaker, Dias, with writing chairs. Student can use these free of cost with their respective faculties for the study purpose.</p>

                                                <h4>Web OPAC</h4>

                                                <p style="text-align:justify;">In which students can search the entire library holdings at their own home, own place. Students and staff can see their current status of transaction. Each student and staff has got their own username and password for access the Web OPAC.</p>

                                                <h4>New Arrival Display</h4>

                                                <p style="text-align:justify;">New arrived books are displayed on regular intervals.</p>

                                                <h4>Reprography</h4>

                                                <p style="text-align:justify;">Xerox facility is available near to library at the rate of no profit no loss.</p>

                                                <h4>Web Solution</h4>

                                                <p style="text-align:justify;">We have kept a file of different web addresses which indicate that what type of information is available in which link. It also contains the useful cuttings which help for trouble shutting in routine computer usage. We have made a large collection of such web addresses/solutions from various news papers and magazines.</p>

                                                <h4>Press media and Publicity Section</h4>

                                                <p style="text-align:justify;">We manage the file of all the technical, cultural, sports, events, functions and other programs organized by the College. We have each and every photographs, press notes and press-cuttings of all the function organized in our college in physical form as well digital. (i.e. from 1996 to till date)</p>

                                                <h4>Good Morning Mail</h4>

                                                <p style="text-align:justify;">We do mails of such good, cultural, motivational thoughts /quotations to our all staff members everyday.</p>

                                                <h4>Classification System</h4>

                                                <p style="text-align:justify;">We are using DDC 22nd edition for classification. All the collection is classified as per DDC. We have also put the display of classification details (i.e. class number, subject heading, raw wise and column wise) at the every cupboard of stack area for ready reference of the students.</p>

                                                <h4>Non Technical (Value Added) Books</h4>

                                                <p style="text-align:justify;">We believe the education with human values, so we have Large number of value added non technical books in English, Gujarti and Hindi language.</p>

                                                <h4>Programs for Cultivating Reading Habits</h4>

                                                <p style="text-align:justify;">Expert Lecture We organize expert lecture like Jay Vasavada, Swami Shri Parmatmanandji etc. on the occasion of Library Week (14 to 20 November) to cultivate the reading habit in student and staff.</p>

                                                <h4>Book Exhibition</h4>

                                                <p style="text-align:justify;">We keep book exhibition during  the celebration of National Library Week. (i.e.14 Nov. to 20 Nov.)</p>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-lg-4">
                        <img src="img/images.jfif" width="100%">
                    </div>
                </div>
            </div>
        </div>
        <!-- ##### Courses Content End ##### -->


        <!-- ##### Register Now Start ##### -->
        <section class="register-now section-padding-100-0 d-flex justify-content-between align-items-center" style="background-image: url(img/core-img/texture.png);">
            <!-- Register Contact Form -->
            <div class="register-contact-form mb-100 wow fadeInUp" data-wow-delay="250ms">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="forms">
                                <h4>Suggestions</h4>
                                <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
                                <script>
                                    $(document).ready(function () {
                                        $('#submit').click(function () {

                                            $.post("suggestion.jsp",
                                                    {text: $('#text').val()},
                                                    function (data) {
                                                        $('#sugg').html(data);
                                                    });
                                        });
                                    });
                                </script>
                                <div class="row">
                                    <div class="col-12"> 
                                        <textarea name="text" id="text" required="required" class="form-control" style="font-family: monospace;height: 90px;font-size: 20px;" placeholder="Please enter the suggestion. . ."></textarea>
                                        <input type="submit" name="suggest" id="submit" onclick="" class="btn-outline-danger col-lg-4" style="height: 40px; border-radius: 10px;" value="Submit"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Register Now Countdown -->
            <div class="register-now-countdown mb-100 wow fadeInUp" style="color: #dc3545; font-family: monospace; font-size: 40px;" id="sugg" data-wow-delay="500ms"></div>
        </section>
        <!-- ##### All Javascript Script ##### -->
        <!-- jQuery-2.2.4 js -->
        <script src="js/jquery/jquery-2.2.4.min.js"></script>
        <!-- Popper js -->
        <script src="js/bootstrap/popper.min.js"></script>
        <!-- Bootstrap js -->
        <script src="js/bootstrap/bootstrap.min.js"></script>
        <!-- All Plugins js -->
        <script src="js/plugins/plugins.js"></script>
        <!-- Active js -->
        <script src="js/active.js"></script>
    </body>
</html>
<%@include file="footer.jsp" %>