class Company {
  final String companyName;
  final String description;
  final List<String> process;
  final List<String> benefits;
  final List<String> locations;
  final List<String> technologies;
  final List<String> industries;
  final String website;
  final Map<String, String> socialMedia;

  Company({
    required this.companyName,
    required this.description,
    required this.process,
    required this.benefits,
    required this.locations,
    required this.technologies,
    required this.industries,
    required this.website,
    required this.socialMedia,
  });
}

List<Company> companies = [
  Company(
    companyName: "Apple",
    description: "Tech giant",
    process: [
      "Prescreen With Recruiter",
      "Technical Phone Interview",
      "Onsite Interview: Coding Interview/Domain Knowledge Interview/Behavioral Interview"
    ],
    benefits: [
      "Competitive salary and bonuses",
      "Healthcare and wellness programs",
      "Employee stock purchase plan",
      "401(k) matching",
      "Paid time off and holidays",
      "Flexible work hours",
      "Employee discounts on Apple products"
    ],
    locations: ["Cupertino, California (HQ)", "Various offices worldwide"],
    technologies: [
      "iOS/macOS development",
      "Hardware engineering",
      "Software development (Swift, Objective-C, etc.)",
      "User experience design",
      "Artificial Intelligence and Machine Learning",
      "Augmented Reality/Virtual Reality",
      "Cloud computing and services"
    ],
    industries: [
      "Consumer Electronics",
      "Information Technology",
      "Software Development",
      "Mobile Applications",
      "Artificial Intelligence",
      "Augmented Reality/Virtual Reality"
    ],
    website: "https://www.apple.com/",
    socialMedia: {
      "Twitter": "https://twitter.com/Apple",
      "LinkedIn": "https://www.linkedin.com/company/apple/",
      "Facebook": "https://www.facebook.com/apple"
    },
  ),
  Company(
    companyName: "Google",
    description:
        "Multinational technology company specializing in internet-related services and products.",
    process: [
      "Resume/Application Screening",
      "Phone Interview: Technical and Behavioral",
      "Onsite Interview: Coding, System Design, and Behavioral interviews",
      "Hiring Committee Review"
    ],
    benefits: [
      "Competitive salary and bonuses",
      "Comprehensive health and wellness programs",
      "Generous parental leave policies",
      "401(k) matching and retirement plans",
      "Flexible work arrangements",
      "Employee stock purchase plan"
    ],
    locations: ["Mountain View, California (HQ)", "Various offices worldwide"],
    technologies: [
      "Search algorithms",
      "Cloud computing (Google Cloud Platform)",
      "Machine learning and AI",
      "Web technologies (JavaScript, Angular, etc.)",
      "Android development",
      "Open-source projects (TensorFlow, Kubernetes, etc.)"
    ],
    industries: [
      "Internet",
      "Technology",
      "Cloud Computing",
      "Software Development",
      "Artificial Intelligence",
      "Mobile Applications"
    ],
    website: "https://www.google.com/",
    socialMedia: {
      "Twitter": "https://twitter.com/Google",
      "LinkedIn": "https://www.linkedin.com/company/google/",
      "Facebook": "https://www.facebook.com/Google"
    },
  ),
  Company(
      companyName: "Amazon",
      description:
          "Multinational technology company focusing on e-commerce, cloud computing, digital streaming, and artificial intelligence.",
      process: [
        "Resume/Application Screening",
        "Phone Interview: Technical and Behavioral",
        "Onsite Interview: Technical, Behavioral, and Case Study interviews",
        "Hiring Committee Review"
      ],
      benefits: [
        "Competitive salary and stock options",
        "Health and wellness programs",
        "Retirement plans including 401(k) matching",
        "Parental leave and adoption assistance",
        "Career development and training opportunities"
      ],
      locations: [
        "Seattle, Washington (HQ)",
        "Various offices and fulfillment centers globally"
      ],
      technologies: [
        "E-commerce platforms",
        "Cloud services (Amazon Web Services)",
        "Artificial intelligence and machine learning",
        "Web and mobile development"
      ],
      industries: [
        "E-commerce",
        "Cloud Computing",
        "Digital Streaming",
        "Artificial Intelligence"
      ],
      website: "https://www.amazon.com/",
      socialMedia: {
        "Twitter": "https://twitter.com/amazon",
        "LinkedIn": "https://www.linkedin.com/company/amazon/",
        "Facebook": "https://www.facebook.com/Amazon"
      }),
  Company(
      companyName: "Infosys",
      description:
          "Multinational corporation providing business consulting, information technology, and outsourcing services.",
      process: [
        "Resume/Application Screening",
        "Phone Interview: Technical and Behavioral",
        "Onsite Interview: Technical and HR",
        "HR Round"
      ],
      benefits: [
        "Competitive salary and bonuses",
        "Health and wellness programs",
        "Retirement plans including 401(k) matching",
        "Paid time off and holidays",
        "Employee assistance programs"
      ],
      locations: [
        "Bangalore, Karnataka, India (HQ)",
        "Various offices and development centers worldwide"
      ],
      technologies: [
        "Enterprise resource planning (ERP) systems",
        "Cloud computing",
        "Data analytics and business intelligence",
        "Artificial intelligence and automation"
      ],
      industries: [
        "Information Technology",
        "Consulting",
        "Outsourcing",
        "Business Services"
      ],
      website: "https://www.infosys.com/",
      socialMedia: {
        "Twitter": "https://twitter.com/Infosys",
        "LinkedIn": "https://www.linkedin.com/company/infosys/",
        "Facebook": "https://www.facebook.com/Infosys"
      }),
  Company(
      companyName: "Goldman Sachs",
      description:
          "Global investment banking, securities, and investment management firm.",
      process: [
        "Resume/Application Screening",
        "Phone Interview: Technical and Behavioral",
        "Onsite Interview: Technical, Case Study, and Behavioral interviews",
        "Hiring Committee Review"
      ],
      benefits: [
        "Competitive salary and bonuses",
        "Comprehensive health and wellness programs",
        "Retirement plans including 401(k) matching",
        "Paid time off and holidays",
        "Employee assistance programs"
      ],
      locations: [
        "New York, New York (HQ)",
        "Various offices and branches worldwide"
      ],
      technologies: [
        "Financial systems and trading platforms",
        "Data analytics and machine learning",
        "Blockchain technology",
        "Risk management software"
      ],
      industries: [
        "Investment Banking",
        "Financial Services",
        "Asset Management",
        "Securities Trading"
      ],
      website: "https://www.goldmansachs.com/",
      socialMedia: {
        "Twitter": "https://twitter.com/GoldmanSachs",
        "LinkedIn": "https://www.linkedin.com/company/goldman-sachs/",
        "Facebook": "https://www.facebook.com/goldmansachs"
      }),
  Company(
      companyName: "Tata Consultancy Services (TCS)",
      description:
          "Global information technology services, consulting, and business solutions company.",
      process: [
        "Resume/Application Screening",
        "Phone Interview: Technical and Behavioral",
        "Onsite Interview: Technical and HR",
        "HR Round"
      ],
      benefits: [
        "Competitive salary and bonuses",
        "Health and wellness programs",
        "Retirement plans including 401(k) matching",
        "Paid time off and holidays",
        "Employee assistance programs"
      ],
      locations: [
        "Mumbai, Maharashtra, India (HQ)",
        "Various offices and development centers worldwide"
      ],
      technologies: [
        "Enterprise software solutions",
        "Cloud computing and infrastructure services",
        "Data analytics and business intelligence",
        "Artificial intelligence and automation"
      ],
      industries: [
        "Information Technology",
        "Consulting",
        "Outsourcing",
        "Business Services"
      ],
      website: "https://www.tcs.com/",
      socialMedia: {
        "Twitter": "https://twitter.com/TCS",
        "LinkedIn":
            "https://www.linkedin.com/company/tata-consultancy-services/",
        "Facebook": "https://www.facebook.com/TataConsultancyServices"
      }),
  Company(
      companyName: "Accenture",
      description:
          "Global professional services company providing strategy, consulting, digital, technology, and operations services.",
      process: [
        "Resume/Application Screening",
        "Phone Interview: Technical and Behavioral",
        "Onsite Interview: Technical and HR",
        "HR Round"
      ],
      benefits: [
        "Competitive salary and bonuses",
        "Health and wellness programs",
        "Retirement plans including 401(k) matching",
        "Paid time off and holidays",
        "Employee assistance programs"
      ],
      locations: [
        "Dublin, Ireland (HQ)",
        "Various offices and delivery centers worldwide"
      ],
      technologies: [
        "Consulting services",
        "Digital transformation solutions",
        "Cloud computing and infrastructure services",
        "Artificial intelligence and automation"
      ],
      industries: [
        "Professional Services",
        "Consulting",
        "Technology",
        "Outsourcing"
      ],
      website: "https://www.accenture.com/",
      socialMedia: {
        "Twitter": "https://twitter.com/Accenture",
        "LinkedIn": "https://www.linkedin.com/company/accenture/",
        "Facebook": "https://www.facebook.com/accenture"
      }),
  Company(
      companyName: "IBM",
      description:
          "Multinational technology and consulting company offering hardware, software, and services.",
      process: [
        "Resume/Application Screening",
        "Phone Interview: Technical and Behavioral",
        "Onsite Interview: Technical and HR",
        "HR Round"
      ],
      benefits: [
        "Competitive salary and bonuses",
        "Health and wellness programs",
        "Retirement plans including 401(k) matching",
        "Paid time off and holidays",
        "Employee assistance programs"
      ],
      locations: [
        "Armonk, New York (HQ)",
        "Various offices and research centers worldwide"
      ],
      technologies: [
        "Cloud computing and services",
        "Artificial intelligence and machine learning",
        "Blockchain technology",
        "Data analytics and business intelligence"
      ],
      industries: [
        "Information Technology",
        "Consulting",
        "Hardware",
        "Software"
      ],
      website: "https://www.ibm.com/",
      socialMedia: {
        "Twitter": "https://twitter.com/IBM",
        "LinkedIn": "https://www.linkedin.com/company/ibm/",
        "Facebook": "https://www.facebook.com/IBM"
      }),
  Company(
      companyName: "Cognizant",
      description:
          "Multinational corporation providing information technology, consulting, and business process outsourcing services.",
      process: [
        "Resume/Application Screening",
        "Phone Interview: Technical and Behavioral",
        "Onsite Interview: Technical and HR",
        "HR Round"
      ],
      benefits: [
        "Competitive salary and bonuses",
        "Health and wellness programs",
        "Retirement plans including 401(k) matching",
        "Paid time off and holidays",
        "Employee assistance programs"
      ],
      locations: [
        "Teaneck, New Jersey (HQ)",
        "Various offices and delivery centers worldwide"
      ],
      technologies: [
        "Application development and maintenance",
        "Cloud computing and services",
        "Data analytics and business intelligence",
        "Digital transformation solutions"
      ],
      industries: [
        "Information Technology",
        "Consulting",
        "Outsourcing",
        "Business Services"
      ],
      website: "https://www.cognizant.com/",
      socialMedia: {
        "Twitter": "https://twitter.com/Cognizant",
        "LinkedIn": "https://www.linkedin.com/company/cognizant/",
        "Facebook": "https://www.facebook.com/Cognizant"
      }),
  Company(
      companyName: "Cisco",
      description:
          "Multinational technology conglomerate specializing in networking hardware, software, and telecommunications equipment.",
      process: [
        "Resume/Application Screening",
        "Phone Interview: Technical and Behavioral",
        "Onsite Interview: Technical and HR",
        "HR Round"
      ],
      benefits: [
        "Competitive salary and bonuses",
        "Health and wellness programs",
        "Retirement plans including 401(k) matching",
        "Paid time off and holidays",
        "Employee stock purchase plan"
      ],
      locations: [
        "San Jose, California (HQ)",
        "Various offices and research centers worldwide"
      ],
      technologies: [
        "Networking hardware and software",
        "Cloud computing and services",
        "Cybersecurity solutions",
        "Internet of Things (IoT) platforms"
      ],
      industries: [
        "Information Technology",
        "Networking",
        "Telecommunications",
        "Cybersecurity"
      ],
      website: "https://www.cisco.com/",
      socialMedia: {
        "Twitter": "https://twitter.com/Cisco",
        "LinkedIn": "https://www.linkedin.com/company/cisco/",
        "Facebook": "https://www.facebook.com/Cisco"
      }),
  Company(
      companyName: "Tech Mahindra",
      description:
          "Multinational technology company offering information technology (IT), networking technology solutions, and business process outsourcing (BPO) services.",
      process: [
        "Resume/Application Screening",
        "Phone Interview: Technical and Behavioral",
        "Onsite Interview: Technical and HR",
        "HR Round"
      ],
      benefits: [
        "Competitive salary and bonuses",
        "Health and wellness programs",
        "Retirement plans including 401(k) matching",
        "Paid time off and holidays",
        "Employee stock purchase plan"
      ],
      locations: [
        "Pune, Maharashtra, India (HQ)",
        "Various offices and delivery centers worldwide"
      ],
      technologies: [
        "Information technology (IT) services",
        "Networking technology solutions",
        "Cloud computing and services",
        "Business process outsourcing (BPO) services"
      ],
      industries: [
        "Information Technology",
        "Telecommunications",
        "Business Process Outsourcing (BPO)"
      ],
      website: "https://www.techmahindra.com/",
      socialMedia: {
        "Twitter": "https://twitter.com/Tech_Mahindra",
        "LinkedIn": "https://www.linkedin.com/company/tech-mahindra/",
        "Facebook": "https://www.facebook.com/TechMahindra"
      }),
  Company(
      companyName: "Wipro",
      description:
          "Multinational corporation providing information technology, consulting, and business process services.",
      process: [
        "Resume/Application Screening",
        "Phone Interview: Technical and Behavioral",
        "Onsite Interview: Technical and HR",
        "HR Round"
      ],
      benefits: [
        "Competitive salary and bonuses",
        "Health and wellness programs",
        "Retirement plans including 401(k) matching",
        "Paid time off and holidays",
        "Employee stock purchase plan"
      ],
      locations: [
        "Bangalore, Karnataka, India (HQ)",
        "Various offices and delivery centers worldwide"
      ],
      technologies: [
        "Information technology (IT) services",
        "Consulting services",
        "Cloud computing and services",
        "Business process services"
      ],
      industries: ["Information Technology", "Consulting", "Outsourcing"],
      website: "https://www.wipro.com/",
      socialMedia: {
        "Twitter": "https://twitter.com/Wipro",
        "LinkedIn": "https://www.linkedin.com/company/wipro/",
        "Facebook": "https://www.facebook.com/Wipro"
      }),
  Company(
      companyName: "Microsoft",
      description:
          "Multinational technology company that develops, manufactures, licenses, supports, and sells computer software, consumer electronics, personal computers, and related services.",
      process: [
        "Resume/Application Screening",
        "Phone Interview: Technical and Behavioral",
        "Onsite Interview: Technical and HR",
        "HR Round"
      ],
      benefits: [
        "Competitive salary and bonuses",
        "Comprehensive health and wellness programs",
        "Retirement plans including 401(k) matching",
        "Paid time off and holidays",
        "Employee stock purchase plan"
      ],
      locations: [
        "Redmond, Washington (HQ)",
        "Various offices and research centers worldwide"
      ],
      technologies: [
        "Operating systems (Windows)",
        "Productivity software (Office Suite)",
        "Cloud computing (Azure)",
        "Artificial intelligence and machine learning"
      ],
      industries: [
        "Technology",
        "Software Development",
        "Cloud Computing",
        "Consumer Electronics"
      ],
      website: "https://www.microsoft.com/",
      socialMedia: {
        "Twitter": "https://twitter.com/Microsoft",
        "LinkedIn": "https://www.linkedin.com/company/microsoft/",
        "Facebook": "https://www.facebook.com/Microsoft"
      }),
  Company(
      companyName: "PricewaterhouseCoopers (PwC)",
      description:
          "Multinational professional services network providing audit and assurance, consulting, and tax services.",
      process: [
        "Resume/Application Screening",
        "Phone Interview: Technical and Behavioral",
        "Onsite Interview: Technical and HR",
        "HR Round"
      ],
      benefits: [
        "Competitive salary and bonuses",
        "Health and wellness programs",
        "Retirement plans including 401(k) matching",
        "Paid time off and holidays",
        "Employee assistance programs"
      ],
      locations: [
        "London, United Kingdom (HQ)",
        "Various offices and branches worldwide"
      ],
      technologies: [
        "Audit and assurance software",
        "Consulting tools and frameworks",
        "Tax compliance software",
        "Data analytics and business intelligence"
      ],
      industries: [
        "Professional Services",
        "Consulting",
        "Accounting",
        "Finance"
      ],
      website: "https://www.pwc.com/",
      socialMedia: {
        "Twitter": "https://twitter.com/PwC",
        "LinkedIn": "https://www.linkedin.com/company/pricewaterhousecoopers/",
        "Facebook": "https://www.facebook.com/PwC"
      })
];
