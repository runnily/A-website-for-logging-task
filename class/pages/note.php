<?php
/**
 * A class that contains code to handle any requests for  /note/
 *
 * @author Adanna Obibuaku <b8025187@newcastle.ac.uk>
 * @copyright 2020 Adanna
 * @package Framework
 * @subpackage UserPages
 */
    namespace Pages;

    use \Support\Context as Context;
    use \Framework\Local;
    use \R;


/**
 * Support /note/
 */
    class Note extends \Framework\Siteaction
    {
/**
 * Handle note operations
 *
 * @param Context   $context    The context object for the site
 *
 * @return string|array   A template name
 */
        public function handle(Context $context)
        {   
            $rest = $context->rest();
            $nid = $rest[0];

            //  loading the note
            $note = $context->load('note', $nid);
            if ($note)
            {
                $user = $context->user();
                if ($user->withCondition('project_id = ?', [$note->project_id])->ownManage) // if users owns the project
                {
                    $context->local()->addval('note', $note); 
                    $context->local()->addval('project', $note->project_id); 
                    $context->local()->addval("exists", 1); 

                    // This updates the note
                    $fdp = $context->formdata('post');
                    // allows user to edit their note
                    try {
                        
                        if ($note->addEdit($context, FALSE, htmlspecialchars($fdp->fetch('title', '', FALSE)), htmlspecialchars($fdp->fetch('summary', '', FALSE)), (int) $fdp->fetch('time', '0', FALSE), 'myfile'))
                        {
                            $context->local()->message(Local::MESSAGE, 'Note Updated!' );
                        }
                    } catch (\Exception $e)
                    {
                        $context->local()->message(Local::ERROR, 'Something went wrong!' );
                    }   
                    R::store($note);
                    // then store note once done
                    
                    // Allows user to download a file assiocated with note
                    if (count($rest) == 5)
                    {
                        $uid = $rest[4];  // The upload id
                        $upl = $context->load("upload", $uid);

                        if ($upl) // when upload exists
                        {
                            if ($rest[3] == 'download') 
                            {
                                $upl->downloaded($context);
                            }
                            if ($rest[3] == 'delete') 
                            {
                                R::trash($upl);
                                $context->local()->message(Local::MESSAGE, 'File Deleted!' );
                            }
                        }
                    }
                }
            }
            return '@content/note.twig';
        }
    }
?>