# Contributing

Thanks for your interest in contributing to the [CRAN Task View on Agriculture][ctv-ag]!

[ctv-ag]: https://cran.r-project.org/view=agriculture

## Step 0: Open an Issue

Before you make any edits, please [open a new Issue][new-issue] to first discuss your proposed changes.
If you only want to fix a typo, you can skip ahead to the next step.

[new-issue]: https://github.com/jpiaskowski/ctv-agriculture/issues/new?template=package_suggestion.md

## Step 1: Edit the CTV file

The source file to edit is `agriculture.ctv`.
If you are comfortable with Git and GitHub, you can fork this repository, clone it, and commit your changes.
If not, don't worry: [click this link to directly edit the file on GitHub](https://github.com/jpiaskowski/ctv-agriculture/edit/master/ReproducibleResearch.ctv).
When you're done making your edits, add a message at the bottom to describe the changes you made, and then click "Commit changes".

The source file format is XML. This sounds more intimidating than it is. There are 3 tags you will need to use:

1. If you start a new paragraph, surround it with the `p` tag:

    ```
    <p>
      Your content goes here.
    </p>
    ```

1. Whenever you mention a CRAN package, surround it with the `pkg` tag:

    ```
    <p>
      The <pkg>knitr</pkg> supports literate programming.
    </p>
    ```

1. To include a link to an external URL, surround it with the `a` ("anchor") tag:

    ```
    <p>
      The <pkg>knitr</pkg> uses <a href="https://pandoc.org/">pandoc</a>.
    </p>
    ```

The last complication is that if you are adding a new package to the Task View (which you'll know from the discussion from Step 0), you will also need to list it in the section `<packagelist>`.
Please add it in alphabetical order (this is only a convention, but it helps keep things organized).

## Step 2: Submit your Pull Request

[Click here to create a new Pull Request][new-pr].
In the body of the Pull Request, please reference the Issue in which we discussed your proposed change (not applicable for typo fixes).
As a hypothetical example, if we had discussed the change in Issue `1`, then you could reference this with `#1`.

[new-pr]: https://github.com/jpiaskowski/ctv-agriculture/compare
