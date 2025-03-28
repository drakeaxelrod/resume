#import "templates/letter.typ": init;

#show: doc => init(
  sender: (
    name: "[Your Name]",
    address: "[Street Address]",
    city: "[City]",
    state: "[State]",
    zip: "[ZIP Code]",
    email: link("mailto:[Email]", "[Email]")
  ),
  recipient: (
    name: "[Recipient Name]",
    title: "[Recipient Title]",
    company: "[Company Name]",
    address: "[Company Address]",
    city: "[City]",
    state: "[State]",
    zip: "[ZIP Code]"
  ),
  doc
)

I am excited to apply for the [Job Title] position at [Company Name]. With my background in [Your Relevant Skills or Experience], I am confident that I can contribute meaningfully to your team and help drive success in [Relevant Company Goals or Industry].

Throughout my career, I have honed my skills in [Skill 1], [Skill 2], and [Skill 3], which align closely with the requirements of this role. In my previous position at [Previous Company], I [describe an achievement or responsibility that highlights your suitability for the role]. This experience has equipped me with [a specific ability or knowledge area relevant to the job].

I am particularly drawn to this opportunity at [Company Name] because of [mention something specific about the company, such as its mission, culture, or projects]. I admire [a key value or initiative of the company] and believe my expertise in [Your Relevant Skill] can support your team in achieving [Company Objective or Project].

I would welcome the opportunity to further discuss how my skills and experience align with your needs. Please feel free to contact me at your convenience to arrange an interview. Thank you for your time and consideration; I look forward to the possibility of contributing to [Company Name].
