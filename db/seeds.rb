Position.create!([
    {
        title: "full-time"
    },
    {
        title: "part-time"
    },
    {
        title: "contract"
    },
    {
        title: "temporary"
    },
    {
        title: "volunteer"
    },
    {
        title: "intership"
    }
])
User.create!(name:"Akamai Technologies", email:"akamai@gmail.com",password:"123456",password_confirmation:"123456",employer:true)
User.create!(name:"Fiverr", email:"fiverr@gmail.com",password:"123456",password_confirmation:"123456",employer:true)
User.create!(name:"Taboola", email:"taboola@gmail.com",password:"123456",password_confirmation:"123456",employer:true)
User.create!(name:"Radware", email:"Radware@gmail.com",password:"123456",password_confirmation:"123456",employer:true)

Job.create!([
    {
        title: "Frontend Developer",
        description: "Are you ready to work on massive web projects and features that are being used by millions across the world? If yes, then you’ve come to the right place.
        As a Frontend Engineer at Fiverr, you'll be responsible for implementing core product features, building client infrastructure, and finding 
        innovative solutions while working with cutting edge technologies. We're looking for top talent that's ready to level up their skills in an exciting 
        and fast paced environment.",
        requirments: "2+ years of Javascript experience, working knowledge of asynchronous programming and ES6 concepts
        2+ years of HTML/CSS experience, familiarity with cross browser compatibility, accessibility and SEO best practices
        Experience with browser APIs & front end performance optimizations
        Fluent English",
        position_id: 2,
        user_id: 1
    },
    {
        title: "React developer",
        description: "Zemingo designs & develops digital products (that create a digital customer experience) for tech-companies, based in Israel
        with offices in New York City.
        We are looking for professional React developer to join our R&D department.",
        requirments: "At least 3-4 years' experience in Frontend development
        Deep Knowledge in ReactJS
        Deep Knowledge of CSS3, HTML5, AJAX, JavaScript
        Strong object-oriented design and development capabilities
        Strong passion for front-end development deep knowledge and understanding of client-side
        Fast and self-learner of new technologies
        Backend experience either Java or Node.js – an advantage",
        position_id: 1,
        user_id: 1
    },
    {
        title: "Junior Java Engineer",
        description: "We are looking for a server-side Java developer to join our R&D team.
        As a management developer you will take part in the development process of our product’s distributed, resilient and performant storage management system.",
        requirments: "B.A. in Computer Science/Computer Engineering/equivalent degree graduate OR 1-2 years of coding experience in Java
        Strong problem-solving skills along with the ability to work independently
        Highly motivated, passionate, a quick learner and team player
        Strive to learn new things and gain experience",
        position_id: 4,
        user_id: 2
        },
        {
        title: "R&D Escalation Engineer",
        description: "The goal of the Escalation Engineering team is to provide our customers with the highest level of customer experience by providing quick solutions to complex technical problems and to ensure that they get value from the entire Varonis products portfolio by setting quality standards. The team extracts and analyzes a huge amount of data from the latest IT technologies available today. Our Escalation Engineers must learn fast and adapt to quickly changing technology in order to maintain and develop our product line. The Escalation Engineer investigates issues related to our product suite and provides timely resolution while coordinating with other technical groups in the company. Our Escalation Engineers are our go-to resource for our most challenging customer cases, which can include technical complexity or politically charged escalations.",
        requirments: "Diagnose, troubleshoot, and replicate customer issues, research, identify and deliver solutions to them.
        Analyze, diagnose, and debug complex customer issues
        Create and implement fixes
        Take ownership of escalations and drive towards resolution
        Act as a technical focal point in cooperative relationships with other internal groups
        Work closely with our software development teams from various product components to deliver success
        Acquire both broad and in-depth product knowledge
        Create and improve documentation to train support engineers to resolve support cases
        Demonstrate strong interpersonal and communication skills
        Push for solutions and interact with people from various other teams",
        position_id: 1,
        user_id: 3
        },
        {
        title: "Junior Python Developer",
        description: "In this role you will build applications for our product and infrastructures for our internal teams. These applications can range from massive infrastructure, through complicated distributed systems to plug-ins for 3rd-party enterprise applications.
        The majority of development is in Python but some of it is in C/C++, Rust, Ember and other languages. You will use a wide range of operating systems, technologies and architectures.",
        requirments: "1-2 years of experience in Python: the words generators, decorators and partials should not surprise you
        Fast learner who is eager to face new technological challenges and come up with innovative solutions
        Curious to learn how things really work
        Excellent teamwork and interpersonal communication skills",
        position_id: 1,
        user_id: 2
        },
        {
        title: "Software Development Engineer",
        description: "About PTC (NASDAQ: PTC) PTC unleashes industrial innovation with award-winning, market-proven solutions that enable companies to differentiate their products and services, improve operational excellence, and increase workforce productivity. With PTC, and its partner ecosystem, manufacturers can capitalize on the promise of today’s new technology to drive digital transformation.
        ",
        requirments: "When looking for a new job, we know you are looking for something that aligns with your values, passions, dreams, and lifestyle. Our team is passionate and committed. We are driven by innovation and value our work-life balance. Check out what it’s like to work at PTC at #lifeatPTC. We believe that diversity of experience and background leads to better ideas and a stronger company. We encourage everyone to bring their unique perspectives to our team. We take a holistic view of the employee experience and provide you with what you need to take care of your health, your wealth, your well-being, and your career. PTC benefits are among the most competitive in the industry. While your salary is the major component of your compensation, you also receive a competitive benefits package including:
        Retirement Savings Plan with Company Match
        Employee Stock Purchase Plan (ESPP)
        Healthcare and Dental insurance
        Paid Time Off and Sick Time
        Birthday Day-off
        Tuition Reimbursement (Canada, India, Israel, US)
        Holiday Pay
        Employee Referral Program
        Management and Employee Training Development
        Other Regional-specific Benefits All qualified applicants will receive consideration for employment without regard to race, color, religion, sex, sexual orientation, gender identity, national origin, disability or protected veteran status.",
        position_id: 1,
        user_id: 4
        },
])






